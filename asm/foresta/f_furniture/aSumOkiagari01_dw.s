lbl_80639D60:
/* 80639D60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80639D64  7C 08 02 A6 */	mflr r0
/* 80639D68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80639D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80639D70  4B A6 11 61 */	bl func_8009AED0
/* 80639D74  7C BD 2B 78 */	mr r29, r5
/* 80639D78  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80639D7C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80639D80  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80639D84  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80639D88  7C 7C 1B 78 */	mr r28, r3
/* 80639D8C  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80639D90  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80639D94  38 7F 00 08 */	addi r3, r31, 8
/* 80639D98  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80639D9C  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80639DA0  90 1F 00 00 */	stw r0, 0(r31)
/* 80639DA4  3B C3 02 10 */	addi r30, r3, 0x210
/* 80639DA8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80639DAC  7F DC F2 14 */	add r30, r28, r30
/* 80639DB0  4B DD 36 25 */	bl _Matrix_to_Mtx_new
/* 80639DB4  90 7F 00 04 */	stw r3, 4(r31)
/* 80639DB8  7F A3 EB 78 */	mr r3, r29
/* 80639DBC  7F C5 F3 78 */	mr r5, r30
/* 80639DC0  38 9C 01 34 */	addi r4, r28, 0x134
/* 80639DC4  38 C0 00 00 */	li r6, 0
/* 80639DC8  38 E0 00 00 */	li r7, 0
/* 80639DCC  39 00 00 00 */	li r8, 0
/* 80639DD0  4B D3 79 69 */	bl cKF_Si3_draw_R_SV
/* 80639DD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80639DD8  4B A6 11 45 */	bl func_8009AF1C
/* 80639DDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80639DE0  7C 08 03 A6 */	mtlr r0
/* 80639DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80639DE8  4E 80 00 20 */	blr 