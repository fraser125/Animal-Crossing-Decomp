lbl_805CA6B4:
/* 805CA6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CA6B8  7C 08 02 A6 */	mflr r0
/* 805CA6BC  7C 69 1B 78 */	mr r9, r3
/* 805CA6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CA6C4  80 04 00 18 */	lwz r0, 0x18(r4)
/* 805CA6C8  28 00 00 00 */	cmplwi r0, 0
/* 805CA6CC  41 82 00 30 */	beq lbl_805CA6FC
/* 805CA6D0  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 805CA6D4  7C A3 2B 78 */	mr r3, r5
/* 805CA6D8  38 89 01 34 */	addi r4, r9, 0x134
/* 805CA6DC  38 C0 00 00 */	li r6, 0
/* 805CA6E0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805CA6E4  38 E0 00 00 */	li r7, 0
/* 805CA6E8  1C A0 03 00 */	mulli r5, r0, 0x300
/* 805CA6EC  39 00 00 00 */	li r8, 0
/* 805CA6F0  38 A5 02 10 */	addi r5, r5, 0x210
/* 805CA6F4  7C A9 2A 14 */	add r5, r9, r5
/* 805CA6F8  4B DA 70 41 */	bl cKF_Si3_draw_R_SV
lbl_805CA6FC:
/* 805CA6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CA700  7C 08 03 A6 */	mtlr r0
/* 805CA704  38 21 00 10 */	addi r1, r1, 0x10
/* 805CA708  4E 80 00 20 */	blr 
