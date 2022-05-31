lbl_805BFBF4:
/* 805BFBF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BFBF8  7C 08 02 A6 */	mflr r0
/* 805BFBFC  38 A0 00 00 */	li r5, 0
/* 805BFC00  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BFC04  38 81 00 08 */	addi r4, r1, 8
/* 805BFC08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BFC0C  7C 7F 1B 78 */	mr r31, r3
/* 805BFC10  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 805BFC14  38 60 00 00 */	li r3, 0
/* 805BFC18  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 805BFC1C  90 C1 00 08 */	stw r6, 8(r1)
/* 805BFC20  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BFC24  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805BFC28  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BFC2C  4B DE 7C 05 */	bl mFI_SetFG_common
/* 805BFC30  80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 805BFC34  28 03 00 00 */	cmplwi r3, 0
/* 805BFC38  41 82 00 10 */	beq lbl_805BFC48
/* 805BFC3C  4B DB 48 05 */	bl Actor_delete
/* 805BFC40  38 00 00 00 */	li r0, 0
/* 805BFC44  90 1F 02 C4 */	stw r0, 0x2c4(r31)
lbl_805BFC48:
/* 805BFC48  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BFC4C  4B DB 0E A5 */	bl cKF_SkeletonInfo_R_dt
/* 805BFC50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BFC54  38 00 00 00 */	li r0, 0
/* 805BFC58  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BFC5C  3C 63 00 03 */	addis r3, r3, 3
/* 805BFC60  98 03 88 3F */	stb r0, -0x77c1(r3)
/* 805BFC64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BFC68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BFC6C  7C 08 03 A6 */	mtlr r0
/* 805BFC70  38 21 00 20 */	addi r1, r1, 0x20
/* 805BFC74  4E 80 00 20 */	blr 
