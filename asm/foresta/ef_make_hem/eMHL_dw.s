lbl_80616F28:
/* 80616F28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80616F2C  7C 08 02 A6 */	mflr r0
/* 80616F30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80616F34  39 61 00 20 */	addi r11, r1, 0x20
/* 80616F38  4B A8 3F 99 */	bl func_8009AED0
/* 80616F3C  3C A0 80 65 */	lis r5, lit_469@ha /* 0x8064C754@ha */
/* 80616F40  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 80616F44  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80616F48  7C 9C 23 78 */	mr r28, r4
/* 80616F4C  C0 45 C7 54 */	lfs f2, lit_469@l(r5)  /* 0x8064C754@l */
/* 80616F50  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80616F54  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80616F58  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 80616F5C  EC 42 00 2A */	fadds f2, f2, f0
/* 80616F60  38 60 00 00 */	li r3, 0
/* 80616F64  4B DF 53 9D */	bl Matrix_translate
/* 80616F68  3C 80 80 65 */	lis r4, lit_493@ha /* 0x8064C75C@ha */
/* 80616F6C  38 60 00 01 */	li r3, 1
/* 80616F70  C0 24 C7 5C */	lfs f1, lit_493@l(r4)  /* 0x8064C75C@l */
/* 80616F74  FC 40 08 90 */	fmr f2, f1
/* 80616F78  FC 60 08 90 */	fmr f3, f1
/* 80616F7C  4B DF 54 71 */	bl Matrix_scale
/* 80616F80  80 7C 00 00 */	lwz r3, 0(r28)
/* 80616F84  4B DC E1 AD */	bl _texture_z_light_fog_prim_shadow
/* 80616F88  83 FC 00 00 */	lwz r31, 0(r28)
/* 80616F8C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80616F90  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80616F94  83 DF 03 00 */	lwz r30, 0x300(r31)
/* 80616F98  38 7E 00 08 */	addi r3, r30, 8
/* 80616F9C  90 7F 03 00 */	stw r3, 0x300(r31)
/* 80616FA0  90 1E 00 00 */	stw r0, 0(r30)
/* 80616FA4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80616FA8  4B DF 64 2D */	bl _Matrix_to_Mtx_new
/* 80616FAC  90 7E 00 04 */	stw r3, 4(r30)
/* 80616FB0  67 A7 FF FF */	oris r7, r29, 0xffff
/* 80616FB4  3C 60 80 CC */	lis r3, ef_circle_light_model@ha /* 0x80CB8160@ha */
/* 80616FB8  3D 00 FA 00 */	lis r8, 0xfa00
/* 80616FBC  81 3F 03 00 */	lwz r9, 0x300(r31)
/* 80616FC0  60 E7 DC 00 */	ori r7, r7, 0xdc00
/* 80616FC4  3C C0 FB 00 */	lis r6, 0xfb00
/* 80616FC8  38 A0 FF 64 */	li r5, -156
/* 80616FCC  38 09 00 08 */	addi r0, r9, 8
/* 80616FD0  3C 80 DE 00 */	lis r4, 0xde00
/* 80616FD4  90 1F 03 00 */	stw r0, 0x300(r31)
/* 80616FD8  38 03 81 60 */	addi r0, r3, ef_circle_light_model@l /* 0x80CB8160@l */
/* 80616FDC  91 09 00 00 */	stw r8, 0(r9)
/* 80616FE0  90 E9 00 04 */	stw r7, 4(r9)
/* 80616FE4  80 FF 03 00 */	lwz r7, 0x300(r31)
/* 80616FE8  38 67 00 08 */	addi r3, r7, 8
/* 80616FEC  90 7F 03 00 */	stw r3, 0x300(r31)
/* 80616FF0  90 C7 00 00 */	stw r6, 0(r7)
/* 80616FF4  90 A7 00 04 */	stw r5, 4(r7)
/* 80616FF8  80 BF 03 00 */	lwz r5, 0x300(r31)
/* 80616FFC  38 65 00 08 */	addi r3, r5, 8
/* 80617000  90 7F 03 00 */	stw r3, 0x300(r31)
/* 80617004  90 85 00 00 */	stw r4, 0(r5)
/* 80617008  90 05 00 04 */	stw r0, 4(r5)
/* 8061700C  39 61 00 20 */	addi r11, r1, 0x20
/* 80617010  4B A8 3F 0D */	bl func_8009AF1C
/* 80617014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80617018  7C 08 03 A6 */	mtlr r0
/* 8061701C  38 21 00 20 */	addi r1, r1, 0x20
/* 80617020  4E 80 00 20 */	blr 
