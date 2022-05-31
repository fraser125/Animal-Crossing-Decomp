lbl_80631ADC:
/* 80631ADC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80631AE0  7C 08 02 A6 */	mflr r0
/* 80631AE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80631AE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80631AEC  4B A6 93 E9 */	bl func_8009AED4
/* 80631AF0  7C BE 2B 78 */	mr r30, r5
/* 80631AF4  7C 7D 1B 78 */	mr r29, r3
/* 80631AF8  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80631AFC  80 65 00 00 */	lwz r3, 0(r5)
/* 80631B00  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80631B04  1C 80 03 00 */	mulli r4, r0, 0x300
/* 80631B08  3B E4 02 10 */	addi r31, r4, 0x210
/* 80631B0C  7F FD FA 14 */	add r31, r29, r31
/* 80631B10  4B DB 35 F9 */	bl _texture_z_light_fog_prim
/* 80631B14  80 7E 00 00 */	lwz r3, 0(r30)
/* 80631B18  4B DB 36 41 */	bl _texture_z_light_fog_prim_xlu
/* 80631B1C  3C 60 80 63 */	lis r3, aKonMimiclock_DwBefore@ha /* 0x80631A88@ha */
/* 80631B20  3C 80 80 63 */	lis r4, func_80631A80@ha /* 0x80631A80@ha */
/* 80631B24  38 C3 1A 88 */	addi r6, r3, aKonMimiclock_DwBefore@l /* 0x80631A88@l */
/* 80631B28  7F E5 FB 78 */	mr r5, r31
/* 80631B2C  38 E4 1A 80 */	addi r7, r4, func_80631A80@l /* 0x80631A80@l */
/* 80631B30  7F C3 F3 78 */	mr r3, r30
/* 80631B34  7F A8 EB 78 */	mr r8, r29
/* 80631B38  38 9D 01 34 */	addi r4, r29, 0x134
/* 80631B3C  4B D3 FB FD */	bl cKF_Si3_draw_R_SV
/* 80631B40  39 61 00 20 */	addi r11, r1, 0x20
/* 80631B44  4B A6 93 DD */	bl func_8009AF20
/* 80631B48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80631B4C  7C 08 03 A6 */	mtlr r0
/* 80631B50  38 21 00 20 */	addi r1, r1, 0x20
/* 80631B54  4E 80 00 20 */	blr 
