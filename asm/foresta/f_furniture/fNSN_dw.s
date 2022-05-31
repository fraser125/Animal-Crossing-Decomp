lbl_806346FC:
/* 806346FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80634700  7C 08 02 A6 */	mflr r0
/* 80634704  90 01 00 24 */	stw r0, 0x24(r1)
/* 80634708  39 61 00 20 */	addi r11, r1, 0x20
/* 8063470C  4B A6 67 BD */	bl func_8009AEC8
/* 80634710  7C BD 2B 78 */	mr r29, r5
/* 80634714  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80634718  83 DD 00 00 */	lwz r30, 0(r29)
/* 8063471C  3C 80 80 6E */	lis r4, fMSM_palette_table@ha /* 0x806D82E0@ha */
/* 80634720  38 05 FB D6 */	addi r0, r5, -1066
/* 80634724  80 BD 00 A0 */	lwz r5, 0xa0(r29)
/* 80634728  83 7E 02 D0 */	lwz r27, 0x2d0(r30)
/* 8063472C  54 00 16 BA */	rlwinm r0, r0, 2, 0x1a, 0x1d
/* 80634730  38 84 82 E0 */	addi r4, r4, fMSM_palette_table@l /* 0x806D82E0@l */
/* 80634734  7C 7C 1B 78 */	mr r28, r3
/* 80634738  7F E4 00 2E */	lwzx r31, r4, r0
/* 8063473C  38 9B 00 08 */	addi r4, r27, 8
/* 80634740  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80634744  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 80634748  1C A5 03 00 */	mulli r5, r5, 0x300
/* 8063474C  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 80634750  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80634754  90 1B 00 00 */	stw r0, 0(r27)
/* 80634758  3B 45 02 10 */	addi r26, r5, 0x210
/* 8063475C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80634760  7F 5C D2 14 */	add r26, r28, r26
/* 80634764  4B DD 8C 71 */	bl _Matrix_to_Mtx_new
/* 80634768  90 7B 00 04 */	stw r3, 4(r27)
/* 8063476C  3C 80 80 63 */	lis r4, fNSN_DrawBefore@ha /* 0x806346A0@ha */
/* 80634770  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 80634774  3C 60 80 63 */	lis r3, fNSN_DrawAfter@ha /* 0x806346F4@ha */
/* 80634778  81 3E 02 D0 */	lwz r9, 0x2d0(r30)
/* 8063477C  38 C4 46 A0 */	addi r6, r4, fNSN_DrawBefore@l /* 0x806346A0@l */
/* 80634780  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 80634784  38 E3 46 F4 */	addi r7, r3, fNSN_DrawAfter@l /* 0x806346F4@l */
/* 80634788  38 89 00 08 */	addi r4, r9, 8
/* 8063478C  7F A3 EB 78 */	mr r3, r29
/* 80634790  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 80634794  7F 45 D3 78 */	mr r5, r26
/* 80634798  7F 88 E3 78 */	mr r8, r28
/* 8063479C  38 9C 01 34 */	addi r4, r28, 0x134
/* 806347A0  90 09 00 00 */	stw r0, 0(r9)
/* 806347A4  93 E9 00 04 */	stw r31, 4(r9)
/* 806347A8  4B D3 CF 91 */	bl cKF_Si3_draw_R_SV
/* 806347AC  39 61 00 20 */	addi r11, r1, 0x20
/* 806347B0  4B A6 67 65 */	bl func_8009AF14
/* 806347B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806347B8  7C 08 03 A6 */	mtlr r0
/* 806347BC  38 21 00 20 */	addi r1, r1, 0x20
/* 806347C0  4E 80 00 20 */	blr 
