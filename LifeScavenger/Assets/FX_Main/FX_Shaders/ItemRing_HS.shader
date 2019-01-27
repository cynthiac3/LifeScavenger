// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-4983-OUT,alpha-1825-OUT;n:type:ShaderForge.SFN_Tex2d,id:1456,x:31929,y:32768,ptovrint:False,ptlb:node_920,ptin:_node_920,varname:node_920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e5f61869c9694e849996963cd0e2deef,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7654,x:32105,y:32768,varname:node_7654,prsc:2|A-1456-RGB,B-601-RGB;n:type:ShaderForge.SFN_Multiply,id:6540,x:32105,y:32940,varname:node_6540,prsc:2|A-1456-R,B-601-A;n:type:ShaderForge.SFN_VertexColor,id:601,x:31929,y:32940,varname:node_601,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:1825,x:32533,y:32959,varname:node_1825,prsc:2|IN-6540-OUT;n:type:ShaderForge.SFN_Sin,id:7793,x:32028,y:32452,varname:node_7793,prsc:2|IN-2445-OUT;n:type:ShaderForge.SFN_Multiply,id:4983,x:32560,y:32764,varname:node_4983,prsc:2|A-956-OUT,B-2313-OUT,C-1263-OUT;n:type:ShaderForge.SFN_Time,id:7202,x:31580,y:32413,varname:node_7202,prsc:2;n:type:ShaderForge.SFN_Slider,id:5028,x:31501,y:32632,ptovrint:False,ptlb:GlowFadeSpeed,ptin:_GlowFadeSpeed,varname:node_5028,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:2445,x:31833,y:32452,varname:node_2445,prsc:2|A-7202-T,B-5028-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:956,x:32455,y:32523,varname:node_956,prsc:2|IN-7793-OUT,IMIN-747-OUT,IMAX-5028-OUT,OMIN-8423-OUT,OMAX-1136-OUT;n:type:ShaderForge.SFN_Multiply,id:747,x:32017,y:32608,varname:node_747,prsc:2|A-5028-OUT,B-3109-OUT;n:type:ShaderForge.SFN_Vector1,id:3109,x:31780,y:32687,varname:node_3109,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:8423,x:32202,y:32624,varname:node_8423,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1136,x:32217,y:32708,varname:node_1136,prsc:2,v1:2;n:type:ShaderForge.SFN_Tex2d,id:8097,x:30976,y:32976,ptovrint:False,ptlb:node_8097,ptin:_node_8097,varname:node_8097,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d3fe7b6b715686c4d9b9250ada04f13e,ntxv:0,isnm:False|UVIN-3652-UVOUT;n:type:ShaderForge.SFN_Rotator,id:3652,x:30798,y:32976,varname:node_3652,prsc:2|UVIN-5020-UVOUT,SPD-2263-OUT;n:type:ShaderForge.SFN_TexCoord,id:5020,x:30277,y:32898,varname:node_5020,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:4918,x:30445,y:33090,varname:node_4918,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Rotator,id:7663,x:30798,y:33159,varname:node_7663,prsc:2|UVIN-5020-UVOUT,SPD-4264-OUT;n:type:ShaderForge.SFN_Tex2d,id:11,x:30976,y:33159,ptovrint:False,ptlb:node_8097_copy,ptin:_node_8097_copy,varname:_node_8097_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d3fe7b6b715686c4d9b9250ada04f13e,ntxv:0,isnm:False|UVIN-7663-UVOUT;n:type:ShaderForge.SFN_Vector1,id:8714,x:30445,y:33243,varname:node_8714,prsc:2,v1:-0.3;n:type:ShaderForge.SFN_Set,id:5898,x:31720,y:33194,varname:DistortionMap,prsc:2|IN-8086-OUT;n:type:ShaderForge.SFN_Get,id:109,x:32233,y:32854,varname:node_109,prsc:2|IN-5898-OUT;n:type:ShaderForge.SFN_Multiply,id:2313,x:32400,y:32790,varname:node_2313,prsc:2|A-7654-OUT,B-109-OUT;n:type:ShaderForge.SFN_Multiply,id:8086,x:31246,y:33292,varname:node_8086,prsc:2|A-8097-R,B-11-R,C-5149-R;n:type:ShaderForge.SFN_Vector1,id:7974,x:30663,y:32800,varname:node_7974,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:567,x:30445,y:33406,varname:node_567,prsc:2,v1:-0.9;n:type:ShaderForge.SFN_Rotator,id:6889,x:30798,y:33370,varname:node_6889,prsc:2|UVIN-5020-UVOUT,SPD-9106-OUT;n:type:ShaderForge.SFN_Tex2d,id:5149,x:30976,y:33370,ptovrint:False,ptlb:node_8097_copy_copy,ptin:_node_8097_copy_copy,varname:_node_8097_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d3fe7b6b715686c4d9b9250ada04f13e,ntxv:0,isnm:False|UVIN-6889-UVOUT;n:type:ShaderForge.SFN_Vector1,id:1263,x:32381,y:32939,varname:node_1263,prsc:2,v1:4;n:type:ShaderForge.SFN_Slider,id:6496,x:30168,y:33635,ptovrint:False,ptlb:GlowRotationSpeed,ptin:_GlowRotationSpeed,varname:node_6496,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:2263,x:30629,y:33090,varname:node_2263,prsc:2|A-4918-OUT,B-6496-OUT;n:type:ShaderForge.SFN_Multiply,id:4264,x:30629,y:33243,varname:node_4264,prsc:2|A-8714-OUT,B-6496-OUT;n:type:ShaderForge.SFN_Multiply,id:9106,x:30629,y:33406,varname:node_9106,prsc:2|A-567-OUT,B-6496-OUT;proporder:1456-5028-8097-11-5149-6496;pass:END;sub:END;*/

Shader "Shader Forge/ItemRing_HS" {
    Properties {
        _node_920 ("node_920", 2D) = "white" {}
        _GlowFadeSpeed ("GlowFadeSpeed", Range(0, 2)) = 1
        _node_8097 ("node_8097", 2D) = "white" {}
        _node_8097_copy ("node_8097_copy", 2D) = "white" {}
        _node_8097_copy_copy ("node_8097_copy_copy", 2D) = "white" {}
        _GlowRotationSpeed ("GlowRotationSpeed", Range(0.1, 3)) = 1
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
            uniform float _GlowFadeSpeed;
            uniform sampler2D _node_8097; uniform float4 _node_8097_ST;
            uniform sampler2D _node_8097_copy; uniform float4 _node_8097_copy_ST;
            uniform sampler2D _node_8097_copy_copy; uniform float4 _node_8097_copy_copy_ST;
            uniform float _GlowRotationSpeed;
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
                float4 node_7202 = _Time;
                float node_747 = (_GlowFadeSpeed*(-1.0));
                float node_8423 = 1.0;
                float4 _node_920_var = tex2D(_node_920,TRANSFORM_TEX(i.uv0, _node_920));
                float4 node_7468 = _Time;
                float node_3652_ang = node_7468.g;
                float node_3652_spd = (0.6*_GlowRotationSpeed);
                float node_3652_cos = cos(node_3652_spd*node_3652_ang);
                float node_3652_sin = sin(node_3652_spd*node_3652_ang);
                float2 node_3652_piv = float2(0.5,0.5);
                float2 node_3652 = (mul(i.uv0-node_3652_piv,float2x2( node_3652_cos, -node_3652_sin, node_3652_sin, node_3652_cos))+node_3652_piv);
                float4 _node_8097_var = tex2D(_node_8097,TRANSFORM_TEX(node_3652, _node_8097));
                float node_7663_ang = node_7468.g;
                float node_7663_spd = ((-0.3)*_GlowRotationSpeed);
                float node_7663_cos = cos(node_7663_spd*node_7663_ang);
                float node_7663_sin = sin(node_7663_spd*node_7663_ang);
                float2 node_7663_piv = float2(0.5,0.5);
                float2 node_7663 = (mul(i.uv0-node_7663_piv,float2x2( node_7663_cos, -node_7663_sin, node_7663_sin, node_7663_cos))+node_7663_piv);
                float4 _node_8097_copy_var = tex2D(_node_8097_copy,TRANSFORM_TEX(node_7663, _node_8097_copy));
                float node_6889_ang = node_7468.g;
                float node_6889_spd = ((-0.9)*_GlowRotationSpeed);
                float node_6889_cos = cos(node_6889_spd*node_6889_ang);
                float node_6889_sin = sin(node_6889_spd*node_6889_ang);
                float2 node_6889_piv = float2(0.5,0.5);
                float2 node_6889 = (mul(i.uv0-node_6889_piv,float2x2( node_6889_cos, -node_6889_sin, node_6889_sin, node_6889_cos))+node_6889_piv);
                float4 _node_8097_copy_copy_var = tex2D(_node_8097_copy_copy,TRANSFORM_TEX(node_6889, _node_8097_copy_copy));
                float DistortionMap = (_node_8097_var.r*_node_8097_copy_var.r*_node_8097_copy_copy_var.r);
                float3 emissive = ((node_8423 + ( (sin((node_7202.g*_GlowFadeSpeed)) - node_747) * (2.0 - node_8423) ) / (_GlowFadeSpeed - node_747))*((_node_920_var.rgb*i.vertexColor.rgb)*DistortionMap)*4.0);
                float3 finalColor = emissive;
                return fixed4(finalColor,saturate((_node_920_var.r*i.vertexColor.a)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
