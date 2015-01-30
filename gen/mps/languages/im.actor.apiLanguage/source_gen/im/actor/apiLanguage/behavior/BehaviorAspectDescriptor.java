package im.actor.apiLanguage.behavior;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;

public class BehaviorAspectDescriptor implements jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor {
  public BehaviorAspectDescriptor() {
  }
  public BehaviorDescriptor getDescriptor(String fqName) {
    switch (Arrays.binarySearch(stringSwitchCases_846f5o_a0a0b, fqName)) {
      case 28:
        return new Struct_BehaviorDescriptor();
      case 14:
        return new Int32_BehaviorDescriptor();
      case 15:
        return new Int64_BehaviorDescriptor();
      case 7:
        return new Boolean_BehaviorDescriptor();
      case 27:
        return new String_BehaviorDescriptor();
      case 19:
        return new Optional_BehaviorDescriptor();
      case 17:
        return new List_BehaviorDescriptor();
      case 4:
        return new ApiDescription_BehaviorDescriptor();
      case 32:
        return new StructType_BehaviorDescriptor();
      case 6:
        return new ApiSection_BehaviorDescriptor();
      case 3:
        return new ApiDef_BehaviorDescriptor();
      case 10:
        return new Enum_BehaviorDescriptor();
      case 29:
        return new StructAttribute_BehaviorDescriptor();
      case 11:
        return new EnumAttribute_BehaviorDescriptor();
      case 20:
        return new Response_BehaviorDescriptor();
      case 8:
        return new Bytes_BehaviorDescriptor();
      case 23:
        return new Rpc_BehaviorDescriptor();
      case 21:
        return new ResponseRefAnonymous_BehaviorDescriptor();
      case 22:
        return new ResponseRefValue_BehaviorDescriptor();
      case 5:
        return new ApiEmptyDef_BehaviorDescriptor();
      case 2:
        return new ApiComment_BehaviorDescriptor();
      case 13:
        return new HeaderKey_BehaviorDescriptor();
      case 36:
        return new Update_BehaviorDescriptor();
      case 12:
        return new EnumType_BehaviorDescriptor();
      case 9:
        return new Double_BehaviorDescriptor();
      case 37:
        return new UpdateBox_BehaviorDescriptor();
      case 24:
        return new RpcDocComment_BehaviorDescriptor();
      case 26:
        return new SectionDoc_BehaviorDescriptor();
      case 18:
        return new MethodThrows_BehaviorDescriptor();
      case 25:
        return new RpcDocParameter_BehaviorDescriptor();
      case 30:
        return new StructDocComment_BehaviorDescriptor();
      case 31:
        return new StructDocParameter_BehaviorDescriptor();
      case 1:
        return new ApiAlias_BehaviorDescriptor();
      case 0:
        return new AliasType_BehaviorDescriptor();
      case 33:
        return new Trait_BehaviorDescriptor();
      case 34:
        return new TraitAttribute_BehaviorDescriptor();
      case 16:
        return new InterfaceRef_BehaviorDescriptor();
      case 35:
        return new TraitType_BehaviorDescriptor();
      default:
        return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
    }
  }
  private static String[] stringSwitchCases_846f5o_a0a0b = new String[]{"im.actor.apiLanguage.structure.AliasType", "im.actor.apiLanguage.structure.ApiAlias", "im.actor.apiLanguage.structure.ApiComment", "im.actor.apiLanguage.structure.ApiDef", "im.actor.apiLanguage.structure.ApiDescription", "im.actor.apiLanguage.structure.ApiEmptyDef", "im.actor.apiLanguage.structure.ApiSection", "im.actor.apiLanguage.structure.Boolean", "im.actor.apiLanguage.structure.Bytes", "im.actor.apiLanguage.structure.Double", "im.actor.apiLanguage.structure.Enum", "im.actor.apiLanguage.structure.EnumAttribute", "im.actor.apiLanguage.structure.EnumType", "im.actor.apiLanguage.structure.HeaderKey", "im.actor.apiLanguage.structure.Int32", "im.actor.apiLanguage.structure.Int64", "im.actor.apiLanguage.structure.InterfaceRef", "im.actor.apiLanguage.structure.List", "im.actor.apiLanguage.structure.MethodThrows", "im.actor.apiLanguage.structure.Optional", "im.actor.apiLanguage.structure.Response", "im.actor.apiLanguage.structure.ResponseRefAnonymous", "im.actor.apiLanguage.structure.ResponseRefValue", "im.actor.apiLanguage.structure.Rpc", "im.actor.apiLanguage.structure.RpcDocComment", "im.actor.apiLanguage.structure.RpcDocParameter", "im.actor.apiLanguage.structure.SectionDoc", "im.actor.apiLanguage.structure.String", "im.actor.apiLanguage.structure.Struct", "im.actor.apiLanguage.structure.StructAttribute", "im.actor.apiLanguage.structure.StructDocComment", "im.actor.apiLanguage.structure.StructDocParameter", "im.actor.apiLanguage.structure.StructType", "im.actor.apiLanguage.structure.Trait", "im.actor.apiLanguage.structure.TraitAttribute", "im.actor.apiLanguage.structure.TraitType", "im.actor.apiLanguage.structure.Update", "im.actor.apiLanguage.structure.UpdateBox"};
}
