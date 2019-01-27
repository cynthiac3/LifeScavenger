// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-7195-OUT,alpha-5491-OUT;n:type:ShaderForge.SFN_Sin,id:2489,x:30840,y:32965,varname:node_2489,prsc:2|IN-4527-OUT;n:type:ShaderForge.SFN_Time,id:5621,x:30497,y:32965,varname:node_5621,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4527,x:30681,y:32965,varname:node_4527,prsc:2|A-5621-T,B-2969-OUT;n:type:ShaderForge.SFN_Vector1,id:2969,x:30490,y:33089,varname:node_2969,prsc:2,v1:10;n:type:ShaderForge.SFN_Sin,id:1419,x:30840,y:33181,varname:node_1419,prsc:2|IN-3995-OUT;n:type:ShaderForge.SFN_Time,id:3345,x:30331,y:33181,varname:node_3345,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3995,x:30681,y:33181,varname:node_3995,prsc:2|A-8409-OUT,B-8548-OUT;n:type:ShaderForge.SFN_Vector1,id:8548,x:30521,y:33317,varname:node_8548,prsc:2,v1:10;n:type:ShaderForge.SFN_Add,id:8409,x:30521,y:33181,varname:node_8409,prsc:2|A-3345-T,B-6862-OUT;n:type:ShaderForge.SFN_Vector1,id:6862,x:30331,y:33317,varname:node_6862,prsc:2,v1:1;n:type:ShaderForge.SFN_VertexColor,id:941,x:32129,y:33097,varname:node_941,prsc:2;n:type:ShaderForge.SFN_Set,id:6320,x:31204,y:32965,varname:Sin,prsc:2|IN-4257-OUT;n:type:ShaderForge.SFN_Set,id:8885,x:31204,y:33181,varname:SinDelay,prsc:2|IN-4115-OUT;n:type:ShaderForge.SFN_RemapRange,id:4115,x:31020,y:33181,varname:node_4115,prsc:2,frmn:-10,frmx:10,tomn:0.1,tomx:2|IN-1419-OUT;n:type:ShaderForge.SFN_RemapRange,id:4257,x:31009,y:32965,varname:node_4257,prsc:2,frmn:-10,frmx:10,tomn:0.1,tomx:2|IN-2489-OUT;n:type:ShaderForge.SFN_Multiply,id:7195,x:32495,y:32811,varname:node_7195,prsc:2|A-8980-OUT,B-941-RGB;n:type:ShaderForge.SFN_Add,id:8980,x:32220,y:32783,varname:node_8980,prsc:2|A-1785-OUT,B-349-OUT;n:type:ShaderForge.SFN_ComponentMask,id:932,x:32175,y:32938,varname:node_932,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8980-OUT;n:type:ShaderForge.SFN_Multiply,id:5491,x:32420,y:33019,varname:node_5491,prsc:2|A-932-OUT,B-941-A;n:type:ShaderForge.SFN_Tex2d,id:4928,x:31958,y:33474,ptovrint:False,ptlb:node_3384_copy_copy_copy,ptin:_node_3384_copy_copy_copy,varname:_node_3384_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ecd89e4b37d3ac94c97dc80bc61e18ac,ntxv:0,isnm:False|UVIN-9311-UVOUT;n:type:ShaderForge.SFN_Rotator,id:9311,x:31799,y:33474,varname:node_9311,prsc:2|UVIN-8688-OUT,ANG-1979-OUT;n:type:ShaderForge.SFN_TexCoord,id:7024,x:31138,y:33474,varname:node_7024,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:1979,x:31612,y:33611,varname:node_1979,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Vector1,id:3163,x:31138,y:33625,varname:node_3163,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:686,x:31480,y:33474,varname:node_686,prsc:2|A-6283-OUT,B-1554-OUT;n:type:ShaderForge.SFN_Subtract,id:8688,x:31642,y:33474,varname:node_8688,prsc:2|A-686-OUT,B-2773-OUT;n:type:ShaderForge.SFN_Divide,id:2773,x:31310,y:33684,varname:node_2773,prsc:2|A-7534-OUT,B-3163-OUT;n:type:ShaderForge.SFN_Multiply,id:6283,x:31310,y:33474,varname:node_6283,prsc:2|A-7024-UVOUT,B-7534-OUT;n:type:ShaderForge.SFN_Vector1,id:1554,x:31310,y:33598,varname:node_1554,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:6440,x:31950,y:33848,ptovrint:False,ptlb:node_3384_copy_copy_copy_copy,ptin:_node_3384_copy_copy_copy_copy,varname:_node_3384_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ecd89e4b37d3ac94c97dc80bc61e18ac,ntxv:0,isnm:False|UVIN-1834-OUT;n:type:ShaderForge.SFN_Get,id:7534,x:31106,y:33720,varname:node_7534,prsc:2|IN-6320-OUT;n:type:ShaderForge.SFN_TexCoord,id:9510,x:31174,y:33848,varname:node_9510,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:7999,x:31146,y:34001,varname:node_7999,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:5578,x:31594,y:33848,varname:node_5578,prsc:2|A-6564-OUT,B-156-OUT;n:type:ShaderForge.SFN_Subtract,id:1834,x:31764,y:33848,varname:node_1834,prsc:2|A-5578-OUT,B-7611-OUT;n:type:ShaderForge.SFN_Divide,id:7611,x:31467,y:34070,varname:node_7611,prsc:2|A-826-OUT,B-7999-OUT;n:type:ShaderForge.SFN_Multiply,id:6564,x:31400,y:33848,varname:node_6564,prsc:2|A-9510-UVOUT,B-826-OUT;n:type:ShaderForge.SFN_Vector1,id:156,x:31429,y:33983,varname:node_156,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Get,id:826,x:31174,y:34105,varname:node_826,prsc:2|IN-8885-OUT;n:type:ShaderForge.SFN_Get,id:1785,x:31806,y:32784,varname:node_1785,prsc:2|IN-243-OUT;n:type:ShaderForge.SFN_Set,id:243,x:32138,y:33474,varname:Star2,prsc:2|IN-4928-RGB;n:type:ShaderForge.SFN_Set,id:8864,x:32165,y:33865,varname:Star1,prsc:2|IN-6440-RGB;n:type:ShaderForge.SFN_Get,id:349,x:31806,y:32843,varname:node_349,prsc:2|IN-8864-OUT;proporder:4928-6440;pass:END;sub:END;*/

Shader "Shader Forge/SparkleShader" {
    Properties {
        _node_3384_copy_copy_copy ("node_3384_copy_copy_copy", 2D) = "white" {}
        _node_3384_copy_copy_copy_copy ("node_3384_copy_copy_copy_copy", 2D) = "white" {}
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
            uniform sampler2D _node_3384_copy_copy_copy; uniform float4 _node_3384_copy_copy_copy_ST;
            uniform sampler2D _node_3384_copy_copy_copy_copy; uniform float4 _node_3384_copy_copy_copy_copy_ST;
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
                float node_9311_ang = 0.75;
                float node_9311_spd = 1.0;
                float node_9311_cos = cos(node_9311_spd*node_9311_ang);
                float node_9311_sin = sin(node_9311_spd*node_9311_ang);
                float2 node_9311_piv = float2(0.5,0.5);
                float4 node_5621 = _Time;
                float Sin = (sin((node_5621.g*10.0))*0.095+1.05);
                float node_7534 = Sin;
                float2 node_9311 = (mul((((i.uv0*node_7534)+0.5)-(node_7534/2.0))-node_9311_piv,float2x2( node_9311_cos, -node_9311_sin, node_9311_sin, node_9311_cos))+node_9311_piv);
                float4 _node_3384_copy_copy_copy_var = tex2D(_node_3384_copy_copy_copy,TRANSFORM_TEX(node_9311, _node_3384_copy_copy_copy));
                float3 Star2 = _node_3384_copy_copy_copy_var.rgb;
                float4 node_3345 = _Time;
                float SinDelay = (sin(((node_3345.g+1.0)*10.0))*0.095+1.05);
                float node_826 = SinDelay;
                float2 node_1834 = (((i.uv0*node_826)+0.5)-(node_826/2.0));
                float4 _node_3384_copy_copy_copy_copy_var = tex2D(_node_3384_copy_copy_copy_copy,TRANSFORM_TEX(node_1834, _node_3384_copy_copy_copy_copy));
                float3 Star1 = _node_3384_copy_copy_copy_copy_var.rgb;
                float3 node_8980 = (Star2+Star1);
                float3 emissive = (node_8980*i.vertexColor.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,(node_8980.r*i.vertexColor.a));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
