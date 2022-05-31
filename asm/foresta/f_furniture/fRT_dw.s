lbl_8063DC48:
/* 8063DC48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063DC4C  7C 08 02 A6 */	mflr r0
/* 8063DC50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063DC54  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DC58  4B A5 D2 7D */	bl func_8009AED4
/* 8063DC5C  7C BD 2B 78 */	mr r29, r5
/* 8063DC60  38 60 90 00 */	li r3, -28672
/* 8063DC64  83 C5 00 00 */	lwz r30, 0(r5)
/* 8063DC68  38 80 00 01 */	li r4, 1
/* 8063DC6C  4B DC E9 F1 */	bl Matrix_RotateY
/* 8063DC70  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8063DC74  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063DC78  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063DC7C  38 7F 00 08 */	addi r3, r31, 8
/* 8063DC80  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063DC84  90 1F 00 00 */	stw r0, 0(r31)
/* 8063DC88  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063DC8C  4B DC F7 49 */	bl _Matrix_to_Mtx_new
/* 8063DC90  90 7F 00 04 */	stw r3, 4(r31)
/* 8063DC94  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8063DC98  3C 80 80 6E */	lis r4, radio_pal@ha /* 0x806DE500@ha */
/* 8063DC9C  3C 60 80 BC */	lis r3, radio_DL_model@ha /* 0x80BC78D8@ha */
/* 8063DCA0  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 8063DCA4  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 8063DCA8  38 A4 E5 00 */	addi r5, r4, radio_pal@l /* 0x806DE500@l */
/* 8063DCAC  3C 80 DE 00 */	lis r4, 0xde00
/* 8063DCB0  38 E8 00 08 */	addi r7, r8, 8
/* 8063DCB4  38 03 78 D8 */	addi r0, r3, radio_DL_model@l /* 0x80BC78D8@l */
/* 8063DCB8  90 FE 02 D0 */	stw r7, 0x2d0(r30)
/* 8063DCBC  90 C8 00 00 */	stw r6, 0(r8)
/* 8063DCC0  90 A8 00 04 */	stw r5, 4(r8)
/* 8063DCC4  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8063DCC8  38 65 00 08 */	addi r3, r5, 8
/* 8063DCCC  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063DCD0  90 85 00 00 */	stw r4, 0(r5)
/* 8063DCD4  90 05 00 04 */	stw r0, 4(r5)
/* 8063DCD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DCDC  4B A5 D2 45 */	bl func_8009AF20
/* 8063DCE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063DCE4  7C 08 03 A6 */	mtlr r0
/* 8063DCE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8063DCEC  4E 80 00 20 */	blr 
