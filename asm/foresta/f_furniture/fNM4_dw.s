lbl_80633854:
/* 80633854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80633858  7C 08 02 A6 */	mflr r0
/* 8063385C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80633860  39 61 00 20 */	addi r11, r1, 0x20
/* 80633864  4B A6 76 71 */	bl func_8009AED4
/* 80633868  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063386C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80633870  83 A3 08 50 */	lwz r29, 0x850(r3)
/* 80633874  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80633878  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063387C  38 7E 00 08 */	addi r3, r30, 8
/* 80633880  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80633884  90 1E 00 00 */	stw r0, 0(r30)
/* 80633888  80 65 00 00 */	lwz r3, 0(r5)
/* 8063388C  4B DD 9B 49 */	bl _Matrix_to_Mtx_new
/* 80633890  90 7E 00 04 */	stw r3, 4(r30)
/* 80633894  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 80633898  3C A0 80 F6 */	lis r5, int_nog_myhome4_on_model@ha /* 0x80F59F70@ha */
/* 8063389C  3C 80 80 F6 */	lis r4, int_nog_myhome4_onT_model@ha /* 0x80F5A080@ha */
/* 806338A0  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 806338A4  3C 60 80 F6 */	lis r3, int_nog_myhome4_off_model@ha /* 0x80F5A020@ha */
/* 806338A8  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 806338AC  3C C0 DE 00 */	lis r6, 0xde00
/* 806338B0  38 08 00 08 */	addi r0, r8, 8
/* 806338B4  38 A5 9F 70 */	addi r5, r5, int_nog_myhome4_on_model@l /* 0x80F59F70@l */
/* 806338B8  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 806338BC  38 84 A0 80 */	addi r4, r4, int_nog_myhome4_onT_model@l /* 0x80F5A080@l */
/* 806338C0  38 03 A0 20 */	addi r0, r3, int_nog_myhome4_off_model@l /* 0x80F5A020@l */
/* 806338C4  90 E8 00 00 */	stw r7, 0(r8)
/* 806338C8  93 A8 00 04 */	stw r29, 4(r8)
/* 806338CC  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 806338D0  38 67 00 08 */	addi r3, r7, 8
/* 806338D4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806338D8  90 C7 00 00 */	stw r6, 0(r7)
/* 806338DC  90 A7 00 04 */	stw r5, 4(r7)
/* 806338E0  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 806338E4  38 65 00 08 */	addi r3, r5, 8
/* 806338E8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806338EC  90 C5 00 00 */	stw r6, 0(r5)
/* 806338F0  90 85 00 04 */	stw r4, 4(r5)
/* 806338F4  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 806338F8  38 64 00 08 */	addi r3, r4, 8
/* 806338FC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80633900  90 C4 00 00 */	stw r6, 0(r4)
/* 80633904  90 04 00 04 */	stw r0, 4(r4)
/* 80633908  39 61 00 20 */	addi r11, r1, 0x20
/* 8063390C  4B A6 76 15 */	bl func_8009AF20
/* 80633910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80633914  7C 08 03 A6 */	mtlr r0
/* 80633918  38 21 00 20 */	addi r1, r1, 0x20
/* 8063391C  4E 80 00 20 */	blr 
