lbl_80633384:
/* 80633384  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80633388  7C 08 02 A6 */	mflr r0
/* 8063338C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80633390  39 61 00 20 */	addi r11, r1, 0x20
/* 80633394  4B A6 7B 41 */	bl func_8009AED4
/* 80633398  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063339C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 806333A0  83 A3 08 50 */	lwz r29, 0x850(r3)
/* 806333A4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 806333A8  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 806333AC  38 7E 00 08 */	addi r3, r30, 8
/* 806333B0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806333B4  90 1E 00 00 */	stw r0, 0(r30)
/* 806333B8  80 65 00 00 */	lwz r3, 0(r5)
/* 806333BC  4B DD A0 19 */	bl _Matrix_to_Mtx_new
/* 806333C0  90 7E 00 04 */	stw r3, 4(r30)
/* 806333C4  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 806333C8  3C A0 80 F5 */	lis r5, int_nog_koban_on_model@ha /* 0x80F51230@ha */
/* 806333CC  3C 80 80 F5 */	lis r4, int_nog_koban_onT_model@ha /* 0x80F51288@ha */
/* 806333D0  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 806333D4  3C 60 80 F5 */	lis r3, int_nog_koban_offT_model@ha /* 0x80F51350@ha */
/* 806333D8  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 806333DC  3C C0 DE 00 */	lis r6, 0xde00
/* 806333E0  38 08 00 08 */	addi r0, r8, 8
/* 806333E4  38 A5 12 30 */	addi r5, r5, int_nog_koban_on_model@l /* 0x80F51230@l */
/* 806333E8  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 806333EC  38 84 12 88 */	addi r4, r4, int_nog_koban_onT_model@l /* 0x80F51288@l */
/* 806333F0  38 03 13 50 */	addi r0, r3, int_nog_koban_offT_model@l /* 0x80F51350@l */
/* 806333F4  90 E8 00 00 */	stw r7, 0(r8)
/* 806333F8  93 A8 00 04 */	stw r29, 4(r8)
/* 806333FC  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80633400  38 67 00 08 */	addi r3, r7, 8
/* 80633404  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80633408  90 C7 00 00 */	stw r6, 0(r7)
/* 8063340C  90 A7 00 04 */	stw r5, 4(r7)
/* 80633410  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80633414  38 65 00 08 */	addi r3, r5, 8
/* 80633418  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063341C  90 C5 00 00 */	stw r6, 0(r5)
/* 80633420  90 85 00 04 */	stw r4, 4(r5)
/* 80633424  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 80633428  38 64 00 08 */	addi r3, r4, 8
/* 8063342C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80633430  90 C4 00 00 */	stw r6, 0(r4)
/* 80633434  90 04 00 04 */	stw r0, 4(r4)
/* 80633438  39 61 00 20 */	addi r11, r1, 0x20
/* 8063343C  4B A6 7A E5 */	bl func_8009AF20
/* 80633440  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80633444  7C 08 03 A6 */	mtlr r0
/* 80633448  38 21 00 20 */	addi r1, r1, 0x20
/* 8063344C  4E 80 00 20 */	blr 
