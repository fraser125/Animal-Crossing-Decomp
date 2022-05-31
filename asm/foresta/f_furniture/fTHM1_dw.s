lbl_8063F700:
/* 8063F700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063F704  7C 08 02 A6 */	mflr r0
/* 8063F708  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063F70C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063F710  4B A5 B7 BD */	bl func_8009AECC
/* 8063F714  7C BC 2B 78 */	mr r28, r5
/* 8063F718  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063F71C  83 A5 00 00 */	lwz r29, 0(r5)
/* 8063F720  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063F724  80 85 00 A0 */	lwz r4, 0xa0(r5)
/* 8063F728  7C 7B 1B 78 */	mr r27, r3
/* 8063F72C  83 FD 02 D0 */	lwz r31, 0x2d0(r29)
/* 8063F730  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063F734  38 7F 00 08 */	addi r3, r31, 8
/* 8063F738  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8063F73C  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063F740  90 1F 00 00 */	stw r0, 0(r31)
/* 8063F744  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063F748  80 65 00 00 */	lwz r3, 0(r5)
/* 8063F74C  7F DB F2 14 */	add r30, r27, r30
/* 8063F750  4B DC DC 85 */	bl _Matrix_to_Mtx_new
/* 8063F754  90 7F 00 04 */	stw r3, 4(r31)
/* 8063F758  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8063F75C  3C 60 80 6E */	lis r3, tak_ham1_texture_table@ha /* 0x806DF900@ha */
/* 8063F760  38 00 00 05 */	li r0, 5
/* 8063F764  81 7D 02 D0 */	lwz r11, 0x2d0(r29)
/* 8063F768  38 E4 00 20 */	addi r7, r4, 0x0020 /* 0xDB060020@l */
/* 8063F76C  39 23 F9 00 */	addi r9, r3, tak_ham1_texture_table@l /* 0x806DF900@l */
/* 8063F770  7F 83 E3 78 */	mr r3, r28
/* 8063F774  38 8B 00 08 */	addi r4, r11, 8
/* 8063F778  7F C5 F3 78 */	mr r5, r30
/* 8063F77C  90 9D 02 D0 */	stw r4, 0x2d0(r29)
/* 8063F780  7F 68 DB 78 */	mr r8, r27
/* 8063F784  38 9B 01 34 */	addi r4, r27, 0x134
/* 8063F788  38 C0 00 00 */	li r6, 0
/* 8063F78C  90 EB 00 00 */	stw r7, 0(r11)
/* 8063F790  38 E0 00 00 */	li r7, 0
/* 8063F794  81 5C 00 A0 */	lwz r10, 0xa0(r28)
/* 8063F798  7C 0A 03 96 */	divwu r0, r10, r0
/* 8063F79C  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 8063F7A0  7C 09 00 2E */	lwzx r0, r9, r0
/* 8063F7A4  90 0B 00 04 */	stw r0, 4(r11)
/* 8063F7A8  4B D3 1F 91 */	bl cKF_Si3_draw_R_SV
/* 8063F7AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8063F7B0  4B A5 B7 69 */	bl func_8009AF18
/* 8063F7B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063F7B8  7C 08 03 A6 */	mtlr r0
/* 8063F7BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8063F7C0  4E 80 00 20 */	blr 
