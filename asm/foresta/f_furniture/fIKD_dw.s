lbl_806309EC:
/* 806309EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806309F0  7C 08 02 A6 */	mflr r0
/* 806309F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806309F8  39 61 00 20 */	addi r11, r1, 0x20
/* 806309FC  4B A6 A4 D5 */	bl func_8009AED0
/* 80630A00  A8 03 00 02 */	lha r0, 2(r3)
/* 80630A04  7C BC 2B 78 */	mr r28, r5
/* 80630A08  38 60 00 00 */	li r3, 0
/* 80630A0C  38 80 00 00 */	li r4, 0
/* 80630A10  2C 00 00 01 */	cmpwi r0, 1
/* 80630A14  38 A0 00 00 */	li r5, 0
/* 80630A18  40 82 00 0C */	bne lbl_80630A24
/* 80630A1C  80 1C 20 90 */	lwz r0, 0x2090(r28)
/* 80630A20  48 00 00 08 */	b lbl_80630A28
lbl_80630A24:
/* 80630A24  80 1C 00 A0 */	lwz r0, 0xa0(r28)
lbl_80630A28:
/* 80630A28  7C 00 00 D0 */	neg r0, r0
/* 80630A2C  7F 87 E3 78 */	mr r7, r28
/* 80630A30  54 06 10 3A */	slwi r6, r0, 2
/* 80630A34  4B FF FF 65 */	bl fIKD_GetTwoTileGfx
/* 80630A38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80630A3C  41 82 00 A8 */	beq lbl_80630AE4
/* 80630A40  83 DC 00 00 */	lwz r30, 0(r28)
/* 80630A44  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80630A48  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80630A4C  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 80630A50  38 7D 00 08 */	addi r3, r29, 8
/* 80630A54  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80630A58  90 1D 00 00 */	stw r0, 0(r29)
/* 80630A5C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80630A60  4B DD C9 75 */	bl _Matrix_to_Mtx_new
/* 80630A64  90 7D 00 04 */	stw r3, 4(r29)
/* 80630A68  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80630A6C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80630A70  83 BE 02 E0 */	lwz r29, 0x2e0(r30)
/* 80630A74  38 7D 00 08 */	addi r3, r29, 8
/* 80630A78  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80630A7C  90 1D 00 00 */	stw r0, 0(r29)
/* 80630A80  80 7C 00 00 */	lwz r3, 0(r28)
/* 80630A84  4B DD C9 51 */	bl _Matrix_to_Mtx_new
/* 80630A88  90 7D 00 04 */	stw r3, 4(r29)
/* 80630A8C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 80630A90  3C 80 80 E9 */	lis r4, int_ike_kama_danro01_on_model@ha /* 0x80E8BAC8@ha */
/* 80630A94  3C 60 80 E9 */	lis r3, int_ike_kama_danrofire_off_model@ha /* 0x80E8BA50@ha */
/* 80630A98  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 80630A9C  38 C5 00 24 */	addi r6, r5, 0x0024 /* 0xDB060024@l */
/* 80630AA0  3C A0 DE 00 */	lis r5, 0xde00
/* 80630AA4  38 84 BA C8 */	addi r4, r4, int_ike_kama_danro01_on_model@l /* 0x80E8BAC8@l */
/* 80630AA8  38 E8 00 08 */	addi r7, r8, 8
/* 80630AAC  38 03 BA 50 */	addi r0, r3, int_ike_kama_danrofire_off_model@l /* 0x80E8BA50@l */
/* 80630AB0  90 FE 02 E0 */	stw r7, 0x2e0(r30)
/* 80630AB4  90 C8 00 00 */	stw r6, 0(r8)
/* 80630AB8  93 E8 00 04 */	stw r31, 4(r8)
/* 80630ABC  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 80630AC0  38 66 00 08 */	addi r3, r6, 8
/* 80630AC4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80630AC8  90 A6 00 00 */	stw r5, 0(r6)
/* 80630ACC  90 86 00 04 */	stw r4, 4(r6)
/* 80630AD0  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 80630AD4  38 64 00 08 */	addi r3, r4, 8
/* 80630AD8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80630ADC  90 A4 00 00 */	stw r5, 0(r4)
/* 80630AE0  90 04 00 04 */	stw r0, 4(r4)
lbl_80630AE4:
/* 80630AE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80630AE8  4B A6 A4 35 */	bl func_8009AF1C
/* 80630AEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80630AF0  7C 08 03 A6 */	mtlr r0
/* 80630AF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80630AF8  4E 80 00 20 */	blr 
