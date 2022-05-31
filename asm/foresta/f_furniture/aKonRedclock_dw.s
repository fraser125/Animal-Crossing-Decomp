lbl_80631D40:
/* 80631D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631D44  7C 08 02 A6 */	mflr r0
/* 80631D48  7C 68 1B 78 */	mr r8, r3
/* 80631D4C  3C C0 80 63 */	lis r6, aKonRedclock_DwBefore@ha /* 0x80631CEC@ha */
/* 80631D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631D54  3C 80 80 63 */	lis r4, func_80631CE4@ha /* 0x80631CE4@ha */
/* 80631D58  38 E4 1C E4 */	addi r7, r4, func_80631CE4@l /* 0x80631CE4@l */
/* 80631D5C  7C A3 2B 78 */	mr r3, r5
/* 80631D60  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80631D64  38 C6 1C EC */	addi r6, r6, aKonRedclock_DwBefore@l /* 0x80631CEC@l */
/* 80631D68  38 88 01 34 */	addi r4, r8, 0x134
/* 80631D6C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80631D70  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80631D74  38 A5 02 10 */	addi r5, r5, 0x210
/* 80631D78  7C A8 2A 14 */	add r5, r8, r5
/* 80631D7C  4B D3 F9 BD */	bl cKF_Si3_draw_R_SV
/* 80631D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631D84  7C 08 03 A6 */	mtlr r0
/* 80631D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80631D8C  4E 80 00 20 */	blr 
