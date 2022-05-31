lbl_80505FE8:
/* 80505FE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80505FEC  7C 08 02 A6 */	mflr r0
/* 80505FF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80505FF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80505FF8  4B B9 4E D9 */	bl func_8009AED0
/* 80505FFC  7C DF 33 78 */	mr r31, r6
/* 80506000  7C 9D 23 78 */	mr r29, r4
/* 80506004  7C BE 2B 78 */	mr r30, r5
/* 80506008  7C 7C 1B 78 */	mr r28, r3
/* 8050600C  7F E5 FB 78 */	mr r5, r31
/* 80506010  38 80 00 70 */	li r4, 0x70
/* 80506014  4B FD 44 45 */	bl Player_actor_check_request_main_able
/* 80506018  2C 03 00 00 */	cmpwi r3, 0
/* 8050601C  41 82 00 40 */	beq lbl_8050605C
/* 80506020  7F 83 E3 78 */	mr r3, r28
/* 80506024  4B ED 36 1D */	bl get_player_actor_withoutCheck
/* 80506028  80 DD 00 00 */	lwz r6, 0(r29)
/* 8050602C  7F E5 FB 78 */	mr r5, r31
/* 80506030  80 1D 00 04 */	lwz r0, 4(r29)
/* 80506034  38 80 00 70 */	li r4, 0x70
/* 80506038  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 8050603C  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 80506040  80 1D 00 08 */	lwz r0, 8(r29)
/* 80506044  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 80506048  B3 C3 0D 6C */	sth r30, 0xd6c(r3)
/* 8050604C  7F 83 E3 78 */	mr r3, r28
/* 80506050  4B FC EF C5 */	bl Player_actor_request_main_index
/* 80506054  38 60 00 01 */	li r3, 1
/* 80506058  48 00 00 08 */	b lbl_80506060
lbl_8050605C:
/* 8050605C  38 60 00 00 */	li r3, 0
lbl_80506060:
/* 80506060  39 61 00 20 */	addi r11, r1, 0x20
/* 80506064  4B B9 4E B9 */	bl func_8009AF1C
/* 80506068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050606C  7C 08 03 A6 */	mtlr r0
/* 80506070  38 21 00 20 */	addi r1, r1, 0x20
/* 80506074  4E 80 00 20 */	blr 
