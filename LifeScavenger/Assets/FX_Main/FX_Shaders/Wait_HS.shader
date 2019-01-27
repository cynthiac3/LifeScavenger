// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-485-OUT,alpha-7858-OUT;n:type:ShaderForge.SFN_Tex2d,id:7025,x:31845,y:32693,ptovrint:False,ptlb:node_7025,ptin:_node_7025,varname:node_7025,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e3825302e2f98e944ab96f5c08cb2b40,ntxv:0,isnm:False|UVIN-6304-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:839,x:30802,y:32496,varname:node_839,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_VertexColor,id:9638,x:32418,y:33122,varname:node_9638,prsc:2;n:type:ShaderForge.SFN_Multiply,id:485,x:32528,y:32812,varname:node_485,prsc:2|A-2191-OUT,B-9638-RGB;n:type:ShaderForge.SFN_Multiply,id:7858,x:32548,y:32942,varname:node_7858,prsc:2|A-4284-OUT,B-9638-A;n:type:ShaderForge.SFN_Panner,id:6304,x:31685,y:32693,varname:node_6304,prsc:2,spu:1,spv:0|UVIN-8685-OUT,DIST-3791-OUT;n:type:ShaderForge.SFN_Tex2d,id:8187,x:31845,y:32870,ptovrint:False,ptlb:node_7025_copy,ptin:_node_7025_copy,varname:_node_7025_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e3825302e2f98e944ab96f5c08cb2b40,ntxv:0,isnm:False|UVIN-35-UVOUT;n:type:ShaderForge.SFN_Panner,id:35,x:31685,y:32870,varname:node_35,prsc:2,spu:1,spv:0|UVIN-8234-OUT,DIST-7793-OUT;n:type:ShaderForge.SFN_Tex2d,id:5978,x:31845,y:33048,ptovrint:False,ptlb:node_7025_copy_copy,ptin:_node_7025_copy_copy,varname:_node_7025_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e3825302e2f98e944ab96f5c08cb2b40,ntxv:0,isnm:False|UVIN-1142-UVOUT;n:type:ShaderForge.SFN_Vector1,id:7793,x:31187,y:32935,varname:node_7793,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4096,x:31187,y:33117,varname:node_4096,prsc:2,v1:-0.33;n:type:ShaderForge.SFN_Vector1,id:3791,x:31187,y:32770,varname:node_3791,prsc:2,v1:0.33;n:type:ShaderForge.SFN_Add,id:2191,x:32356,y:32812,varname:node_2191,prsc:2|A-7025-RGB,B-8187-RGB,C-5978-RGB;n:type:ShaderForge.SFN_Add,id:4284,x:32344,y:32942,varname:node_4284,prsc:2|A-247-OUT,B-2927-OUT,C-6-OUT;n:type:ShaderForge.SFN_Get,id:8685,x:31474,y:32693,varname:node_8685,prsc:2|IN-655-OUT;n:type:ShaderForge.SFN_Set,id:655,x:31018,y:32572,varname:UvCoord,prsc:2|IN-839-UVOUT;n:type:ShaderForge.SFN_Get,id:8234,x:31474,y:32870,varname:node_8234,prsc:2|IN-655-OUT;n:type:ShaderForge.SFN_Get,id:5348,x:31474,y:33048,varname:node_5348,prsc:2|IN-655-OUT;n:type:ShaderForge.SFN_Panner,id:1142,x:31685,y:33048,varname:node_1142,prsc:2,spu:1,spv:0|UVIN-5348-OUT,DIST-4096-OUT;n:type:ShaderForge.SFN_Sin,id:7675,x:31676,y:33400,varname:node_7675,prsc:2|IN-1670-OUT;n:type:ShaderForge.SFN_Time,id:545,x:30992,y:33270,varname:node_545,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:9084,x:31836,y:33400,varname:node_9084,prsc:2|IN-7675-OUT;n:type:ShaderForge.SFN_Sin,id:6102,x:31676,y:33545,varname:node_6102,prsc:2|IN-6858-OUT;n:type:ShaderForge.SFN_Clamp01,id:3262,x:31836,y:33545,varname:node_3262,prsc:2|IN-6102-OUT;n:type:ShaderForge.SFN_Add,id:6858,x:31497,y:33545,varname:node_6858,prsc:2|A-1670-OUT,B-7565-OUT;n:type:ShaderForge.SFN_Vector1,id:7565,x:30993,y:33687,varname:node_7565,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:649,x:30993,y:33878,varname:node_649,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:1914,x:31497,y:33736,varname:node_1914,prsc:2|A-1670-OUT,B-649-OUT;n:type:ShaderForge.SFN_Clamp01,id:4255,x:31836,y:33736,varname:node_4255,prsc:2|IN-6121-OUT;n:type:ShaderForge.SFN_Sin,id:6121,x:31676,y:33736,varname:node_6121,prsc:2|IN-1914-OUT;n:type:ShaderForge.SFN_OneMinus,id:5552,x:32005,y:33736,varname:node_5552,prsc:2|IN-4255-OUT;n:type:ShaderForge.SFN_OneMinus,id:1032,x:32005,y:33545,varname:node_1032,prsc:2|IN-3262-OUT;n:type:ShaderForge.SFN_OneMinus,id:1214,x:32005,y:33400,varname:node_1214,prsc:2|IN-9084-OUT;n:type:ShaderForge.SFN_Set,id:601,x:32187,y:33400,varname:Opacity3,prsc:2|IN-1214-OUT;n:type:ShaderForge.SFN_Set,id:2678,x:32187,y:33545,varname:Opacity2,prsc:2|IN-1032-OUT;n:type:ShaderForge.SFN_Set,id:1280,x:32187,y:33736,varname:Opacity1,prsc:2|IN-5552-OUT;n:type:ShaderForge.SFN_Multiply,id:6,x:32065,y:33048,varname:node_6,prsc:2|A-5978-R,B-1362-OUT;n:type:ShaderForge.SFN_Get,id:1362,x:31956,y:33228,varname:node_1362,prsc:2|IN-601-OUT;n:type:ShaderForge.SFN_Multiply,id:2927,x:32082,y:32887,varname:node_2927,prsc:2|A-8187-R,B-6788-OUT;n:type:ShaderForge.SFN_Get,id:6788,x:31952,y:32990,varname:node_6788,prsc:2|IN-2678-OUT;n:type:ShaderForge.SFN_Multiply,id:247,x:32107,y:32666,varname:node_247,prsc:2|A-7025-R,B-1187-OUT;n:type:ShaderForge.SFN_Get,id:1187,x:31993,y:32820,varname:node_1187,prsc:2|IN-1280-OUT;n:type:ShaderForge.SFN_Multiply,id:1670,x:31257,y:33361,varname:node_1670,prsc:2|A-545-T,B-5412-OUT;n:type:ShaderForge.SFN_Slider,id:5412,x:30871,y:33443,ptovrint:False,ptlb:Fade Speed,ptin:_FadeSpeed,varname:node_5412,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.205128,max:3;proporder:7025-8187-5978-5412;pass:END;sub:END;*/

Shader "Shader Forge/Wait_HS" {
    Properties {
        _node_7025 ("node_7025", 2D) = "white" {}
        _node_7025_copy ("node_7025_copy", 2D) = "white" {}
        _node_7025_copy_copy ("node_7025_copy_copy", 2D) = "white" {}
        _FadeSpeed ("Fade Speed", Range(0, 3)) = 2.205128
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
            uniform sampler2D _node_7025; uniform float4 _node_7025_ST;
            uniform sampler2D _node_7025_copy; uniform float4 _node_7025_copy_ST;
            uniform sampler2D _node_7025_copy_copy; uniform float4 _node_7025_copy_copy_ST;
            uniform float _FadeSpeed;
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
                float2 UvCoord = i.uv0;
                float2 node_6304 = (UvCoord+0.33*float2(1,0));
                float4 _node_7025_var = tex2D(_node_7025,TRANSFORM_TEX(node_6304, _node_7025));
                float2 node_35 = (UvCoord+0.0*float2(1,0));
                float4 _node_7025_copy_var = tex2D(_node_7025_copy,TRANSFORM_TEX(node_35, _node_7025_copy));
                float2 node_1142 = (UvCoord+(-0.33)*float2(1,0));
                float4 _node_7025_copy_copy_var = tex2D(_node_7025_copy_copy,TRANSFORM_TEX(node_1142, _node_7025_copy_copy));
                float3 emissive = ((_node_7025_var.rgb+_node_7025_copy_var.rgb+_node_7025_copy_copy_var.rgb)*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float4 node_545 = _Time;
                float node_1670 = (node_545.g*_FadeSpeed);
                float Opacity1 = (1.0 - saturate(sin((node_1670+1.0))));
                float Opacity2 = (1.0 - saturate(sin((node_1670+0.5))));
                float Opacity3 = (1.0 - saturate(sin(node_1670)));
                return fixed4(finalColor,(((_node_7025_var.r*Opacity1)+(_node_7025_copy_var.r*Opacity2)+(_node_7025_copy_copy_var.r*Opacity3))*i.vertexColor.a));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
