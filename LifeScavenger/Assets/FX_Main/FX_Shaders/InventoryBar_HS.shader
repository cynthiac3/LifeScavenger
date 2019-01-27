// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-3131-OUT,alpha-7546-OUT;n:type:ShaderForge.SFN_Color,id:7560,x:31735,y:32669,ptovrint:False,ptlb:InvEmpty,ptin:_InvEmpty,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3839749,c2:0.4378864,c3:0.9852941,c4:1;n:type:ShaderForge.SFN_Color,id:2260,x:31735,y:32491,ptovrint:False,ptlb:InvFull,ptin:_InvFull,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.375,c2:0.3218687,c3:0.02481618,c4:1;n:type:ShaderForge.SFN_Lerp,id:3131,x:32281,y:32747,varname:node_3131,prsc:2|A-2260-RGB,B-7560-RGB,T-4235-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1142,x:30913,y:32837,ptovrint:False,ptlb:InvWeightMax,ptin:_InvWeightMax,varname:node_4600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:78;n:type:ShaderForge.SFN_Divide,id:7748,x:31414,y:32734,varname:node_7748,prsc:2|A-9366-OUT,B-1142-OUT;n:type:ShaderForge.SFN_TexCoord,id:7623,x:31741,y:32994,varname:node_7623,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:693,x:31914,y:32994,varname:node_693,prsc:2|A-7623-UVOUT,B-7687-OUT;n:type:ShaderForge.SFN_Vector2,id:7687,x:31741,y:33143,varname:node_7687,prsc:2,v1:1,v2:4;n:type:ShaderForge.SFN_Panner,id:410,x:32064,y:32994,varname:node_410,prsc:2,spu:1,spv:0|UVIN-693-OUT,DIST-492-OUT;n:type:ShaderForge.SFN_Floor,id:7833,x:32380,y:32994,varname:node_7833,prsc:2|IN-1408-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1408,x:32221,y:32994,varname:node_1408,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-410-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:7546,x:32543,y:32994,varname:node_7546,prsc:2|IN-7833-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5338,x:30913,y:32700,ptovrint:False,ptlb:InvWeightCurrent,ptin:_InvWeightCurrent,varname:_HealthTotal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Get,id:4235,x:32064,y:32793,varname:node_4235,prsc:2|IN-9780-OUT;n:type:ShaderForge.SFN_Set,id:9780,x:31609,y:32699,varname:node_9780,prsc:2|IN-7748-OUT;n:type:ShaderForge.SFN_Get,id:829,x:31720,y:33257,varname:node_829,prsc:2|IN-9780-OUT;n:type:ShaderForge.SFN_OneMinus,id:492,x:31914,y:33155,varname:node_492,prsc:2|IN-829-OUT;n:type:ShaderForge.SFN_Clamp,id:9366,x:31212,y:32697,varname:node_9366,prsc:2|IN-5338-OUT,MIN-9456-OUT,MAX-1142-OUT;n:type:ShaderForge.SFN_Vector1,id:9456,x:30913,y:32765,varname:node_9456,prsc:2,v1:0;proporder:7560-2260-1142-5338;pass:END;sub:END;*/

Shader "Shader Forge/InventoryBar_HS" {
    Properties {
        _InvEmpty ("InvEmpty", Color) = (0.3839749,0.4378864,0.9852941,1)
        _InvFull ("InvFull", Color) = (0.375,0.3218687,0.02481618,1)
        _InvWeightMax ("InvWeightMax", Float ) = 78
        _InvWeightCurrent ("InvWeightCurrent", Float ) = 4
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
            uniform float4 _InvEmpty;
            uniform float4 _InvFull;
            uniform float _InvWeightMax;
            uniform float _InvWeightCurrent;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_9780 = (clamp(_InvWeightCurrent,0.0,_InvWeightMax)/_InvWeightMax);
                float3 emissive = lerp(_InvFull.rgb,_InvEmpty.rgb,node_9780);
                float3 finalColor = emissive;
                return fixed4(finalColor,(1.0 - floor(((i.uv0*float2(1,4))+(1.0 - node_9780)*float2(1,0)).r)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
