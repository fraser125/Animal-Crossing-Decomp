lbl_80419A2C:
/* 80419A2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80419A30  7C 08 02 A6 */	mflr r0
/* 80419A34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80419A38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80419A3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80419A40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80419A44  3F E3 00 02 */	addis r31, r3, 2
/* 80419A48  4B F8 B2 85 */	bl mFI_GetFieldId
/* 80419A4C  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 80419A50  40 82 00 08 */	bne lbl_80419A58
/* 80419A54  4B F8 49 C1 */	bl mEv_erase_FG_all_in_common_place
lbl_80419A58:
/* 80419A58  88 9F 61 25 */	lbz r4, 0x6125(r31)
/* 80419A5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80419A60  88 1F 61 23 */	lbz r0, 0x6123(r31)
/* 80419A64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80419A68  98 81 00 08 */	stb r4, 8(r1)
/* 80419A6C  3C 63 00 02 */	addis r3, r3, 2
/* 80419A70  98 01 00 09 */	stb r0, 9(r1)
/* 80419A74  A0 01 00 08 */	lhz r0, 8(r1)
/* 80419A78  B0 03 05 5A */	sth r0, 0x55a(r3)
/* 80419A7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80419A80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80419A84  7C 08 03 A6 */	mtlr r0
/* 80419A88  38 21 00 20 */	addi r1, r1, 0x20
/* 80419A8C  4E 80 00 20 */	blr 
