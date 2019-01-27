// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33002,y:32755,varname:node_3138,prsc:2|emission-7785-OUT,alpha-5892-OUT;n:type:ShaderForge.SFN_Tex2d,id:2242,x:32182,y:32767,ptovrint:False,ptlb:node_2242,ptin:_node_2242,varname:node_2242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ec92b43e581b9d147b74bea30861b384,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:6799,x:32182,y:33009,varname:node_6799,prsc:2;n:type:ShaderForge.SFN_Multiply,id:271,x:32443,y:32766,varname:node_271,prsc:2|A-2242-RGB,B-6799-RGB;n:type:ShaderForge.SFN_Multiply,id:5892,x:32443,y:33004,varname:node_5892,prsc:2|A-2242-R,B-6799-A;n:type:ShaderForge.SFN_Multiply,id:7785,x:32747,y:32698,varname:node_7785,prsc:2|A-2379-OUT,B-271-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2379,x:32498,y:32611,ptovrint:False,ptlb:Glow,ptin:_Glow,varname:node_2379,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;proporder:2242-2379;pass:END;sub:END;*/

Shader "Shader Forge/Star_HS" {
    Properties {
        _node_2242 ("node_2242", 2D) = "white" {}
        _Glow ("Glow", Float ) = 4
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
            uniform sampler2D _node_2242; uniform float4 _node_2242_ST;
            uniform float _Glow;
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
                float4 _node_2242_var = tex2D(_node_2242,TRANSFORM_TEX(i.uv0, _node_2242));
                float3 emissive = (_Glow*(_node_2242_var.rgb*i.vertexColor.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,(_node_2242_var.r*i.vertexColor.a));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
