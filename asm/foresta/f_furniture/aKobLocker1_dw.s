lbl_80630F44:
/* 80630F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630F48  7C 08 02 A6 */	mflr r0
/* 80630F4C  7C 69 1B 78 */	mr r9, r3
/* 80630F50  7C A3 2B 78 */	mr r3, r5
/* 80630F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630F58  38 89 01 34 */	addi r4, r9, 0x134
/* 80630F5C  38 C0 00 00 */	li r6, 0
/* 80630F60  38 E0 00 00 */	li r7, 0
/* 80630F64  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80630F68  39 00 00 00 */	li r8, 0
/* 80630F6C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80630F70  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80630F74  38 A5 02 10 */	addi r5, r5, 0x210
/* 80630F78  7C A9 2A 14 */	add r5, r9, r5
/* 80630F7C  4B D4 07 BD */	bl cKF_Si3_draw_R_SV
/* 80630F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630F84  7C 08 03 A6 */	mtlr r0
/* 80630F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80630F8C  4E 80 00 20 */	blr 
