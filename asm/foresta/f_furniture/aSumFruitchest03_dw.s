lbl_80637018:
/* 80637018  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063701C  7C 08 02 A6 */	mflr r0
/* 80637020  90 01 00 24 */	stw r0, 0x24(r1)
/* 80637024  39 61 00 20 */	addi r11, r1, 0x20
/* 80637028  4B A6 3E A9 */	bl func_8009AED0
/* 8063702C  7C BD 2B 78 */	mr r29, r5
/* 80637030  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80637034  80 A5 00 00 */	lwz r5, 0(r5)
/* 80637038  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063703C  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80637040  7C 7C 1B 78 */	mr r28, r3
/* 80637044  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80637048  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063704C  38 7F 00 08 */	addi r3, r31, 8
/* 80637050  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80637054  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80637058  90 1F 00 00 */	stw r0, 0(r31)
/* 8063705C  3B C3 02 10 */	addi r30, r3, 0x210
/* 80637060  80 7D 00 00 */	lwz r3, 0(r29)
/* 80637064  7F DC F2 14 */	add r30, r28, r30
/* 80637068  4B DD 63 6D */	bl _Matrix_to_Mtx_new
/* 8063706C  90 7F 00 04 */	stw r3, 4(r31)
/* 80637070  7F A3 EB 78 */	mr r3, r29
/* 80637074  7F C5 F3 78 */	mr r5, r30
/* 80637078  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063707C  38 C0 00 00 */	li r6, 0
/* 80637080  38 E0 00 00 */	li r7, 0
/* 80637084  39 00 00 00 */	li r8, 0
/* 80637088  4B D3 A6 B1 */	bl cKF_Si3_draw_R_SV
/* 8063708C  39 61 00 20 */	addi r11, r1, 0x20
/* 80637090  4B A6 3E 8D */	bl func_8009AF1C
/* 80637094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80637098  7C 08 03 A6 */	mtlr r0
/* 8063709C  38 21 00 20 */	addi r1, r1, 0x20
/* 806370A0  4E 80 00 20 */	blr 
