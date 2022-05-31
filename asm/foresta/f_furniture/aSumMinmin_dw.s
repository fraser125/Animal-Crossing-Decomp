lbl_80639B80:
/* 80639B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639B84  7C 08 02 A6 */	mflr r0
/* 80639B88  7C 68 1B 78 */	mr r8, r3
/* 80639B8C  7C A3 2B 78 */	mr r3, r5
/* 80639B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639B94  38 88 01 34 */	addi r4, r8, 0x134
/* 80639B98  38 C0 00 00 */	li r6, 0
/* 80639B9C  38 E0 00 00 */	li r7, 0
/* 80639BA0  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80639BA4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80639BA8  1C A0 03 00 */	mulli r5, r0, 0x300
/* 80639BAC  38 A5 02 10 */	addi r5, r5, 0x210
/* 80639BB0  7C A8 2A 14 */	add r5, r8, r5
/* 80639BB4  4B D3 7B 85 */	bl cKF_Si3_draw_R_SV
/* 80639BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639BBC  7C 08 03 A6 */	mtlr r0
/* 80639BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80639BC4  4E 80 00 20 */	blr 
