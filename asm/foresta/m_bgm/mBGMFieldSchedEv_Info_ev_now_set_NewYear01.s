lbl_80379F58:
/* 80379F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80379F5C  7C 08 02 A6 */	mflr r0
/* 80379F60  3C 80 00 42 */	lis r4, 0x0042 /* 0x00421000@ha */
/* 80379F64  3C A0 00 43 */	lis r5, 0x0043 /* 0x00432000@ha */
/* 80379F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80379F6C  3C E0 81 13 */	lis r7, data_811351C0@ha /* 0x811351C0@ha */
/* 80379F70  3C C0 04 00 */	lis r6, 0x0400 /* 0x03FFFFFF@ha */
/* 80379F74  38 84 10 00 */	addi r4, r4, 0x1000 /* 0x00421000@l */
/* 80379F78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80379F7C  38 07 51 C0 */	addi r0, r7, data_811351C0@l /* 0x811351C0@l */
/* 80379F80  7C 7F 1B 78 */	mr r31, r3
/* 80379F84  38 A5 20 00 */	addi r5, r5, 0x2000 /* 0x00432000@l */
/* 80379F88  7C 03 03 78 */	mr r3, r0
/* 80379F8C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x03FFFFFF@l */
/* 80379F90  4B FF EA A5 */	bl mBGMClock_range_time_check
/* 80379F94  2C 03 00 00 */	cmpwi r3, 0
/* 80379F98  41 82 00 14 */	beq lbl_80379FAC
/* 80379F9C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379FA0  60 00 00 01 */	ori r0, r0, 1
/* 80379FA4  90 1F 00 00 */	stw r0, 0(r31)
/* 80379FA8  48 00 00 10 */	b lbl_80379FB8
lbl_80379FAC:
/* 80379FAC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379FB0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80379FB4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80379FB8:
/* 80379FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80379FBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80379FC0  7C 08 03 A6 */	mtlr r0
/* 80379FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80379FC8  4E 80 00 20 */	blr 
