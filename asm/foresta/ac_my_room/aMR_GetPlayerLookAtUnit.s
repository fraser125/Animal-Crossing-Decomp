lbl_80477F64:
/* 80477F64  2C 06 00 00 */	cmpwi r6, 0
/* 80477F68  54 A8 A7 3E */	rlwinm r8, r5, 0x14, 0x1c, 0x1f
/* 80477F6C  4D 80 00 20 */	bltlr 
/* 80477F70  2C 06 00 08 */	cmpwi r6, 8
/* 80477F74  4C 80 00 20 */	bgelr 
/* 80477F78  3C E0 80 69 */	lis r7, high_offset@ha /* 0x8068A004@ha */
/* 80477F7C  54 C0 10 3A */	slwi r0, r6, 2
/* 80477F80  38 E7 A0 04 */	addi r7, r7, high_offset@l /* 0x8068A004@l */
/* 80477F84  3C A0 80 69 */	lis r5, unit_offset@ha /* 0x80689FC4@ha */
/* 80477F88  7C 07 00 2E */	lwzx r0, r7, r0
/* 80477F8C  38 A5 9F C4 */	addi r5, r5, unit_offset@l /* 0x80689FC4@l */
/* 80477F90  80 C3 00 00 */	lwz r6, 0(r3)
/* 80477F94  7C 08 02 14 */	add r0, r8, r0
/* 80477F98  54 07 16 BA */	rlwinm r7, r0, 2, 0x1a, 0x1d
/* 80477F9C  7C 05 3A AE */	lhax r0, r5, r7
/* 80477FA0  7C A5 3A 14 */	add r5, r5, r7
/* 80477FA4  7C 06 02 14 */	add r0, r6, r0
/* 80477FA8  90 03 00 00 */	stw r0, 0(r3)
/* 80477FAC  80 64 00 00 */	lwz r3, 0(r4)
/* 80477FB0  A8 05 00 02 */	lha r0, 2(r5)
/* 80477FB4  7C 03 02 14 */	add r0, r3, r0
/* 80477FB8  90 04 00 00 */	stw r0, 0(r4)
/* 80477FBC  4E 80 00 20 */	blr 
