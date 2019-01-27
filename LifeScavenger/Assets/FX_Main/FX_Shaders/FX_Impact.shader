// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-6675-OUT,alpha-8862-OUT;n:type:ShaderForge.SFN_Tex2d,id:6616,x:31926,y:32693,ptovrint:False,ptlb:node_6616,ptin:_node_6616,varname:node_6616,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:09250412390743e46941021835dab2eb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8862,x:32501,y:32975,varname:node_8862,prsc:2|A-9292-OUT,B-4033-OUT;n:type:ShaderForge.SFN_VertexColor,id:8156,x:31930,y:32983,varname:node_8156,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6675,x:32192,y:32694,varname:node_6675,prsc:2|A-6616-RGB,B-8156-RGB;n:type:ShaderForge.SFN_Multiply,id:9292,x:32205,y:32906,varname:node_9292,prsc:2|A-6616-R,B-8156-A;n:type:ShaderForge.SFN_TexCoord,id:4120,x:31676,y:33119,varname:node_4120,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:9649,x:31849,y:33119,varname:node_9649,prsc:2|A-4120-UVOUT,B-8424-OUT;n:type:ShaderForge.SFN_Vector2,id:8424,x:31676,y:33268,varname:node_8424,prsc:2,v1:1,v2:1;n:type:ShaderForge.SFN_Panner,id:7253,x:32017,y:33119,varname:node_7253,prsc:2,spu:0,spv:1|UVIN-9649-OUT,DIST-6339-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3339,x:32169,y:33119,varname:node_3339,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7253-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:6339,x:31849,y:33268,varname:node_6339,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3569-Z;n:type:ShaderForge.SFN_TexCoord,id:3569,x:31676,y:33361,varname:node_3569,prsc:2,uv:0,uaff:True;n:type:ShaderForge.SFN_Clamp01,id:4033,x:32350,y:33093,varname:node_4033,prsc:2|IN-3339-OUT;proporder:6616;pass:END;sub:END;*/

Shader "Shader Forge/FX_Impact" {
    Properties {
        _node_6616 ("node_6616", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_6616; uniform float4 _node_6616_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float4 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _node_6616_var = tex2D(_node_6616,TRANSFORM_TEX(i.uv0, _node_6616));
                float3 emissive = (_node_6616_var.rgb*i.vertexColor.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,((_node_6616_var.r*i.vertexColor.a)*saturate(((i.uv0*float2(1,1))+(i.uv0.b*2.0+-1.0)*float2(0,1)).g)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
