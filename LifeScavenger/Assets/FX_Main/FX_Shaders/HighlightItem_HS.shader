// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-1255-OUT,alpha-5114-OUT;n:type:ShaderForge.SFN_Fresnel,id:5114,x:32235,y:32892,varname:node_5114,prsc:2|EXP-1083-OUT;n:type:ShaderForge.SFN_Sin,id:2982,x:31884,y:32892,varname:node_2982,prsc:2|IN-1535-OUT;n:type:ShaderForge.SFN_Time,id:3193,x:31460,y:32892,varname:node_3193,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:1083,x:32063,y:32892,varname:node_1083,prsc:2,frmn:-2.5,frmx:2.5,tomn:0.5,tomx:1.5|IN-2982-OUT;n:type:ShaderForge.SFN_Multiply,id:1535,x:31697,y:32892,varname:node_1535,prsc:2|A-3193-T,B-6111-OUT;n:type:ShaderForge.SFN_Vector1,id:6111,x:31430,y:33153,varname:node_6111,prsc:2,v1:2.5;n:type:ShaderForge.SFN_Multiply,id:1255,x:32470,y:32767,varname:node_1255,prsc:2|A-3910-RGB,B-5114-OUT;n:type:ShaderForge.SFN_Color,id:3910,x:32181,y:32611,ptovrint:False,ptlb:node_3910,ptin:_node_3910,varname:node_3910,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8896552,c3:0,c4:1;proporder:3910;pass:END;sub:END;*/

Shader "Shader Forge/HighlightItem_HS" {
    Properties {
        _node_3910 ("node_3910", Color) = (1,0.8896552,0,1)
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
            uniform float4 _node_3910;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_3193 = _Time;
                float node_5114 = pow(1.0-max(0,dot(normalDirection, viewDirection)),(sin((node_3193.g*2.5))*0.2+1.0));
                float3 emissive = (_node_3910.rgb*node_5114);
                float3 finalColor = emissive;
                return fixed4(finalColor,node_5114);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
