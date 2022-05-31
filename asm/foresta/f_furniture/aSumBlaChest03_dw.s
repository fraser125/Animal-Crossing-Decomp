lbl_80635BC0:
/* 80635BC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80635BC4  7C 08 02 A6 */	mflr r0
/* 80635BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80635BCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80635BD0  4B A6 53 01 */	bl func_8009AED0
/* 80635BD4  7C BD 2B 78 */	mr r29, r5
/* 80635BD8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80635BDC  80 A5 00 00 */	lwz r5, 0(r5)
/* 80635BE0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80635BE4  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80635BE8  7C 7C 1B 78 */	mr r28, r3
/* 80635BEC  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80635BF0  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80635BF4  38 7F 00 08 */	addi r3, r31, 8
/* 80635BF8  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80635BFC  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80635C00  90 1F 00 00 */	stw r0, 0(r31)
/* 80635C04  3B C3 02 10 */	addi r30, r3, 0x210
/* 80635C08  80 7D 00 00 */	lwz r3, 0(r29)
/* 80635C0C  7F DC F2 14 */	add r30, r28, r30
/* 80635C10  4B DD 77 C5 */	bl _Matrix_to_Mtx_new
/* 80635C14  90 7F 00 04 */	stw r3, 4(r31)
/* 80635C18  7F A3 EB 78 */	mr r3, r29
/* 80635C1C  7F C5 F3 78 */	mr r5, r30
/* 80635C20  38 9C 01 34 */	addi r4, r28, 0x134
/* 80635C24  38 C0 00 00 */	li r6, 0
/* 80635C28  38 E0 00 00 */	li r7, 0
/* 80635C2C  39 00 00 00 */	li r8, 0
/* 80635C30  4B D3 BB 09 */	bl cKF_Si3_draw_R_SV
/* 80635C34  39 61 00 20 */	addi r11, r1, 0x20
/* 80635C38  4B A6 52 E5 */	bl func_8009AF1C
/* 80635C3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80635C40  7C 08 03 A6 */	mtlr r0
/* 80635C44  38 21 00 20 */	addi r1, r1, 0x20
/* 80635C48  4E 80 00 20 */	blr 
