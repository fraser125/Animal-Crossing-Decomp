lbl_804EAEA0:
/* 804EAEA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EAEA4  7C 08 02 A6 */	mflr r0
/* 804EAEA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EAEAC  39 61 00 20 */	addi r11, r1, 0x20
/* 804EAEB0  4B BB 00 19 */	bl func_8009AEC8
/* 804EAEB4  7C 7A 1B 78 */	mr r26, r3
/* 804EAEB8  7C 9B 23 78 */	mr r27, r4
/* 804EAEBC  7C BC 2B 78 */	mr r28, r5
/* 804EAEC0  7C DD 33 78 */	mr r29, r6
/* 804EAEC4  7C FE 3B 78 */	mr r30, r7
/* 804EAEC8  7D 1F 43 78 */	mr r31, r8
/* 804EAECC  4B EE E7 A5 */	bl mPlib_get_player_actor_main_index
/* 804EAED0  2C 03 00 13 */	cmpwi r3, 0x13
/* 804EAED4  40 82 00 60 */	bne lbl_804EAF34
/* 804EAED8  7F 43 D3 78 */	mr r3, r26
/* 804EAEDC  7F E5 FB 78 */	mr r5, r31
/* 804EAEE0  38 80 00 16 */	li r4, 0x16
/* 804EAEE4  4B FE F5 75 */	bl Player_actor_check_request_main_able
/* 804EAEE8  2C 03 00 00 */	cmpwi r3, 0
/* 804EAEEC  41 82 00 48 */	beq lbl_804EAF34
/* 804EAEF0  7F 43 D3 78 */	mr r3, r26
/* 804EAEF4  4B EE E7 4D */	bl get_player_actor_withoutCheck
/* 804EAEF8  93 63 0D 60 */	stw r27, 0xd60(r3)
/* 804EAEFC  7F E5 FB 78 */	mr r5, r31
/* 804EAF00  38 80 00 16 */	li r4, 0x16
/* 804EAF04  B3 83 0D 64 */	sth r28, 0xd64(r3)
/* 804EAF08  80 DD 00 00 */	lwz r6, 0(r29)
/* 804EAF0C  80 1D 00 04 */	lwz r0, 4(r29)
/* 804EAF10  90 C3 0D 68 */	stw r6, 0xd68(r3)
/* 804EAF14  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804EAF18  80 1D 00 08 */	lwz r0, 8(r29)
/* 804EAF1C  90 03 0D 70 */	stw r0, 0xd70(r3)
/* 804EAF20  93 C3 0D 74 */	stw r30, 0xd74(r3)
/* 804EAF24  7F 43 D3 78 */	mr r3, r26
/* 804EAF28  4B FE A0 ED */	bl Player_actor_request_main_index
/* 804EAF2C  38 60 00 01 */	li r3, 1
/* 804EAF30  48 00 00 08 */	b lbl_804EAF38
lbl_804EAF34:
/* 804EAF34  38 60 00 00 */	li r3, 0
lbl_804EAF38:
/* 804EAF38  39 61 00 20 */	addi r11, r1, 0x20
/* 804EAF3C  4B BA FF D9 */	bl func_8009AF14
/* 804EAF40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EAF44  7C 08 03 A6 */	mtlr r0
/* 804EAF48  38 21 00 20 */	addi r1, r1, 0x20
/* 804EAF4C  4E 80 00 20 */	blr 
