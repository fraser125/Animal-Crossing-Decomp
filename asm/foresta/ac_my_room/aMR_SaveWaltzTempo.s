lbl_80472B30:
/* 80472B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80472B34  7C 08 02 A6 */	mflr r0
/* 80472B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80472B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80472B40  4B FF FF 2D */	bl aMR_NowSceneWaltzTempo
/* 80472B44  28 03 00 00 */	cmplwi r3, 0
/* 80472B48  41 82 00 28 */	beq lbl_80472B70
/* 80472B4C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80472B50  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80472B54  3F E4 00 03 */	addis r31, r4, 3
/* 80472B58  88 1F DB E0 */	lbz r0, -0x2420(r31)
/* 80472B5C  28 00 00 00 */	cmplwi r0, 0
/* 80472B60  40 82 00 10 */	bne lbl_80472B70
/* 80472B64  48 1B B6 75 */	bl sAdo_GetRhythmInfo
/* 80472B68  38 00 00 01 */	li r0, 1
/* 80472B6C  98 1F DB E0 */	stb r0, -0x2420(r31)
lbl_80472B70:
/* 80472B70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80472B74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80472B78  7C 08 03 A6 */	mtlr r0
/* 80472B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80472B80  4E 80 00 20 */	blr 
