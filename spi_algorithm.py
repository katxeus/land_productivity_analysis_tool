from qgis.PyQt.QtCore import QCoreApplication, QVariant
from qgis.core import (QgsField,
                       QgsFeature,
                       QgsFeatureSink,
                       QgsFeatureRequest,
                       QgsProcessingUtils,
                       QgsProcessing,
                       QgsProcessingAlgorithm,
                       QgsProcessingParameterFeatureSource,
                       QgsProcessingParameterFeatureSink)
from qgis.utils import iface
import os


class SPIAlgorithm(QgsProcessingAlgorithm):
    INPUT = 'INPUT'
    OUTPUT = 'OUTPUT'
    def __init__(self):
        super().__init__()
    def name(self):
        return "spialgorithm"
    def displayName(self):
        """
        Returns the translated algorithm name, which should be used for any
        user-visible display of the algorithm name.
        """
        return 'Soil Productivity Index'
    def tr(self, text):
        return QCoreApplication.translate("spialgorithm", text)
    def createInstance(self):
        return type(self)()

    def initAlgorithm(self, config=None):
        self.addParameter(QgsProcessingParameterFeatureSource(
            self.INPUT,
            self.tr("Input layer"),
            [QgsProcessing.TypeVectorAnyGeometry]))
        self.addParameter(QgsProcessingParameterFeatureSink(
            self.OUTPUT,
            self.tr("Soil Productivity Index"),
            QgsProcessing.TypeVectorAnyGeometry))

    def processAlgorithm(self, parameters, context, feedback):
        source = self.parameterAsSource(parameters, self.INPUT, context)
        (sink, dest_id) = self.parameterAsSink(parameters, self.OUTPUT, context,
                                               source.fields(), source.wkbType(), source.sourceCrs())

        features = source.getFeatures(QgsFeatureRequest())
        for feat in features:
            out_feat = QgsFeature()
            out_feat.setGeometry(feat.geometry())
            out_feat.setAttributes(feat.attributes())
            sink.addFeature(out_feat, QgsFeatureSink.FastInsert)

        # to get hold of the layer in post processing:
        self.dest_id=dest_id

        return {self.OUTPUT: dest_id}

    #Changes suggested by Fran Raga:
    def postProcessAlgorithm(self, context, feedback):
        output = QgsProcessingUtils.mapLayerFromString(self.dest_id, context)
        style_path = os.path.join(os.path.dirname(__file__), 'styles/spi.qml')
        output.loadNamedStyle(style_path)
        output.triggerRepaint()
        iface.mapCanvas().refresh()
        iface.mapCanvas().refreshAllLayers()
        iface.layerTreeView().refreshLayerSymbology(output.id())
        return {self.OUTPUT: self.dest_id}
