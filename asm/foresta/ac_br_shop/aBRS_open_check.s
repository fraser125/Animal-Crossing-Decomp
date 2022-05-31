lbl_805A8AFC:
/* 805A8AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A8B00  7C 08 02 A6 */	mflr r0
/* 805A8B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A8B08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A8B0C  3B E0 00 01 */	li r31, 1
/* 805A8B10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A8B14  7C 7E 1B 78 */	mr r30, r3
/* 805A8B18  38 60 00 02 */	li r3, 2
/* 805A8B1C  4B DF 1E FD */	bl mEv_CheckEvent
/* 805A8B20  2C 03 00 00 */	cmpwi r3, 0
/* 805A8B24  41 82 00 48 */	beq lbl_805A8B6C
/* 805A8B28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805A8B2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805A8B30  3C 83 00 02 */	addis r4, r3, 2
/* 805A8B34  80 64 04 CC */	lwz r3, 0x4cc(r4)
/* 805A8B38  80 04 04 D0 */	lwz r0, 0x4d0(r4)
/* 805A8B3C  90 61 00 08 */	stw r3, 8(r1)
/* 805A8B40  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A8B44  80 1E 02 B8 */	lwz r0, 0x2b8(r30)
/* 805A8B48  2C 00 00 01 */	cmpwi r0, 1
/* 805A8B4C  40 82 00 1C */	bne lbl_805A8B68
/* 805A8B50  38 61 00 08 */	addi r3, r1, 8
/* 805A8B54  4B E5 DE 6D */	bl lbRTC_IsOverRTC
/* 805A8B58  2C 03 00 00 */	cmpwi r3, 0
/* 805A8B5C  41 82 00 0C */	beq lbl_805A8B68
/* 805A8B60  3B E0 00 01 */	li r31, 1
/* 805A8B64  48 00 00 08 */	b lbl_805A8B6C
lbl_805A8B68:
/* 805A8B68  3B E0 00 02 */	li r31, 2
lbl_805A8B6C:
/* 805A8B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A8B70  7F E3 FB 78 */	mr r3, r31
/* 805A8B74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A8B78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A8B7C  7C 08 03 A6 */	mtlr r0
/* 805A8B80  38 21 00 20 */	addi r1, r1, 0x20
/* 805A8B84  4E 80 00 20 */	blr 
