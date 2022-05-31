lbl_80537A28:
/* 80537A28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80537A2C  7C 08 02 A6 */	mflr r0
/* 80537A30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80537A34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80537A38  7C 7F 1B 78 */	mr r31, r3
/* 80537A3C  80 63 08 F0 */	lwz r3, 0x8f0(r3)
/* 80537A40  28 03 00 00 */	cmplwi r3, 0
/* 80537A44  41 82 00 18 */	beq lbl_80537A5C
/* 80537A48  88 03 00 02 */	lbz r0, 2(r3)
/* 80537A4C  28 00 00 04 */	cmplwi r0, 4
/* 80537A50  40 82 00 0C */	bne lbl_80537A5C
/* 80537A54  38 00 00 00 */	li r0, 0
/* 80537A58  90 03 08 F0 */	stw r0, 0x8f0(r3)
lbl_80537A5C:
/* 80537A5C  38 60 00 FF */	li r3, 0xff
/* 80537A60  38 00 FF FF */	li r0, -1
/* 80537A64  98 7F 00 D6 */	stb r3, 0xd6(r31)
/* 80537A68  7F E3 FB 78 */	mr r3, r31
/* 80537A6C  38 80 00 05 */	li r4, 5
/* 80537A70  38 A0 FF FF */	li r5, -1
/* 80537A74  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 80537A78  4B FF 92 55 */	bl aNPC_set_feel_info
/* 80537A7C  80 9F 08 6C */	lwz r4, 0x86c(r31)
/* 80537A80  38 61 00 08 */	addi r3, r1, 8
/* 80537A84  80 BF 08 70 */	lwz r5, 0x870(r31)
/* 80537A88  4B E6 D9 F5 */	bl mFI_UtNum2CenterWpos
/* 80537A8C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80537A90  7F E3 FB 78 */	mr r3, r31
/* 80537A94  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80537A98  4B FF 7D C1 */	bl aNPC_set_dst_pos
/* 80537A9C  3C 80 80 6A */	lis r4, data_806A1400@ha /* 0x806A1400@ha */
/* 80537AA0  7F E3 FB 78 */	mr r3, r31
/* 80537AA4  38 E4 14 00 */	addi r7, r4, data_806A1400@l /* 0x806A1400@l */
/* 80537AA8  38 A0 00 14 */	li r5, 0x14
/* 80537AAC  38 80 00 04 */	li r4, 4
/* 80537AB0  38 C0 00 00 */	li r6, 0
/* 80537AB4  4B FF 9B 49 */	bl aNPC_set_request_act
/* 80537AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80537ABC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80537AC0  7C 08 03 A6 */	mtlr r0
/* 80537AC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80537AC8  4E 80 00 20 */	blr 
