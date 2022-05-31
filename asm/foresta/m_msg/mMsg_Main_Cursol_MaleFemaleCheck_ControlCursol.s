lbl_803C4E4C:
/* 803C4E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4E50  7C 08 02 A6 */	mflr r0
/* 803C4E54  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803C4E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4E5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4E60  7C 9F 23 78 */	mr r31, r4
/* 803C4E64  93 C1 00 08 */	stw r30, 8(r1)
/* 803C4E68  7C 7E 1B 78 */	mr r30, r3
/* 803C4E6C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803C4E70  3C 63 00 02 */	addis r3, r3, 2
/* 803C4E74  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 803C4E78  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803C4E7C  38 85 00 20 */	addi r4, r5, 0x20
/* 803C4E80  88 03 00 14 */	lbz r0, 0x14(r3)
/* 803C4E84  7C 00 07 75 */	extsb. r0, r0
/* 803C4E88  40 82 00 1C */	bne lbl_803C4EA4
/* 803C4E8C  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4E90  7C 64 02 14 */	add r3, r4, r0
/* 803C4E94  88 83 00 03 */	lbz r4, 3(r3)
/* 803C4E98  88 63 00 02 */	lbz r3, 2(r3)
/* 803C4E9C  50 64 44 2E */	rlwimi r4, r3, 8, 0x10, 0x17
/* 803C4EA0  48 00 00 18 */	b lbl_803C4EB8
lbl_803C4EA4:
/* 803C4EA4  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4EA8  7C 64 02 14 */	add r3, r4, r0
/* 803C4EAC  88 83 00 05 */	lbz r4, 5(r3)
/* 803C4EB0  88 63 00 04 */	lbz r3, 4(r3)
/* 803C4EB4  50 64 44 2E */	rlwimi r4, r3, 8, 0x10, 0x17
lbl_803C4EB8:
/* 803C4EB8  7F C3 F3 78 */	mr r3, r30
/* 803C4EBC  4B FF B1 09 */	bl mMsg_Set_continue_msg_num
/* 803C4EC0  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C4EC4  7F C3 F3 78 */	mr r3, r30
/* 803C4EC8  4B FF B1 81 */	bl func_803C0048
/* 803C4ECC  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4ED0  7C 00 1A 14 */	add r0, r0, r3
/* 803C4ED4  38 60 00 00 */	li r3, 0
/* 803C4ED8  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4EDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4EE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C4EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4EE8  7C 08 03 A6 */	mtlr r0
/* 803C4EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4EF0  4E 80 00 20 */	blr 
