// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32860,y:32724,varname:node_3138,prsc:2|emission-4865-OUT,alpha-8527-OUT;n:type:ShaderForge.SFN_Tex2d,id:6180,x:32102,y:32757,ptovrint:False,ptlb:node_920,ptin:_node_920,varname:node_920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1b2fbbc943c05c041aeeabf39c8a9916,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2760,x:32411,y:32779,varname:node_2760,prsc:2|A-6180-RGB,B-5454-RGB;n:type:ShaderForge.SFN_Multiply,id:1898,x:32421,y:33000,varname:node_1898,prsc:2|A-6180-R,B-5454-A;n:type:ShaderForge.SFN_VertexColor,id:5454,x:32102,y:32982,varname:node_5454,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:4865,x:32629,y:32799,varname:node_4865,prsc:2|IN-2760-OUT;n:type:ShaderForge.SFN_Clamp01,id:8527,x:32615,y:32954,varname:node_8527,prsc:2|IN-1898-OUT;proporder:6180;pass:END;sub:END;*/

Shader "Shader Forge/ItemRay_HS" {
    Properties {
        _node_920 ("node_920", 2D) = "white" {}
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
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_920; uniform float4 _node_920_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
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
                float4 _node_920_var = tex2D(_node_920,TRANSFORM_TEX(i.uv0, _node_920));
                float3 emissive = saturate((_node_920_var.rgb*i.vertexColor.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,saturate((_node_920_var.r*i.vertexColor.a)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
