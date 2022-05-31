lbl_804FAFD8:
/* 804FAFD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FAFDC  7C 08 02 A6 */	mflr r0
/* 804FAFE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FAFE4  39 61 00 30 */	addi r11, r1, 0x30
/* 804FAFE8  4B B9 FE D9 */	bl func_8009AEC0
/* 804FAFEC  7D 3E 4B 78 */	mr r30, r9
/* 804FAFF0  7C 99 23 78 */	mr r25, r4
/* 804FAFF4  7C BA 2B 78 */	mr r26, r5
/* 804FAFF8  7C 78 1B 78 */	mr r24, r3
/* 804FAFFC  7C DB 33 78 */	mr r27, r6
/* 804FB000  7C FC 3B 78 */	mr r28, r7
/* 804FB004  7D 1D 43 78 */	mr r29, r8
/* 804FB008  7F C5 F3 78 */	mr r5, r30
/* 804FB00C  38 80 00 42 */	li r4, 0x42
/* 804FB010  4B FD F4 49 */	bl Player_actor_check_request_main_able
/* 804FB014  2C 03 00 00 */	cmpwi r3, 0
/* 804FB018  41 82 00 3C */	beq lbl_804FB054
/* 804FB01C  7F 03 C3 78 */	mr r3, r24
/* 804FB020  4B ED E6 21 */	bl get_player_actor_withoutCheck
/* 804FB024  7C 7F 1B 78 */	mr r31, r3
/* 804FB028  7F 03 C3 78 */	mr r3, r24
/* 804FB02C  7F C5 F3 78 */	mr r5, r30
/* 804FB030  38 80 00 42 */	li r4, 0x42
/* 804FB034  4B FD 9F E1 */	bl Player_actor_request_main_index
/* 804FB038  93 3F 0D 60 */	stw r25, 0xd60(r31)
/* 804FB03C  38 60 00 01 */	li r3, 1
/* 804FB040  93 5F 0D 64 */	stw r26, 0xd64(r31)
/* 804FB044  93 7F 0D 68 */	stw r27, 0xd68(r31)
/* 804FB048  B3 9F 0D 6C */	sth r28, 0xd6c(r31)
/* 804FB04C  93 BF 0D 70 */	stw r29, 0xd70(r31)
/* 804FB050  48 00 00 08 */	b lbl_804FB058
lbl_804FB054:
/* 804FB054  38 60 00 00 */	li r3, 0
lbl_804FB058:
/* 804FB058  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB05C  4B B9 FE B1 */	bl func_8009AF0C
/* 804FB060  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FB064  7C 08 03 A6 */	mtlr r0
/* 804FB068  38 21 00 30 */	addi r1, r1, 0x30
/* 804FB06C  4E 80 00 20 */	blr 
