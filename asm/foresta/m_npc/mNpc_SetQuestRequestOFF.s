lbl_803D3718:
/* 803D3718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D371C  7C 08 02 A6 */	mflr r0
/* 803D3720  3C A0 81 17 */	lis r5, l_npc_talk_info@ha /* 0x8116C5AC@ha */
/* 803D3724  2C 03 00 00 */	cmpwi r3, 0
/* 803D3728  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D372C  54 66 18 38 */	slwi r6, r3, 3
/* 803D3730  38 05 C5 AC */	addi r0, r5, l_npc_talk_info@l /* 0x8116C5AC@l */
/* 803D3734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D3738  7F E0 32 14 */	add r31, r0, r6
/* 803D373C  41 80 00 30 */	blt lbl_803D376C
/* 803D3740  2C 03 00 10 */	cmpwi r3, 0x10
/* 803D3744  40 80 00 28 */	bge lbl_803D376C
/* 803D3748  88 1F 00 03 */	lbz r0, 3(r31)
/* 803D374C  28 00 00 01 */	cmplwi r0, 1
/* 803D3750  40 82 00 14 */	bne lbl_803D3764
/* 803D3754  7C 85 23 78 */	mr r5, r4
/* 803D3758  38 7F 00 04 */	addi r3, r31, 4
/* 803D375C  38 9F 00 06 */	addi r4, r31, 6
/* 803D3760  4B FF FE 45 */	bl mNpc_SetUnlockTimer
lbl_803D3764:
/* 803D3764  38 00 00 00 */	li r0, 0
/* 803D3768  98 1F 00 03 */	stb r0, 3(r31)
lbl_803D376C:
/* 803D376C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D3770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D3774  7C 08 03 A6 */	mtlr r0
/* 803D3778  38 21 00 10 */	addi r1, r1, 0x10
/* 803D377C  4E 80 00 20 */	blr 
