lbl_804FBFD0:
/* 804FBFD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FBFD4  7C 08 02 A6 */	mflr r0
/* 804FBFD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FBFDC  39 61 00 30 */	addi r11, r1, 0x30
/* 804FBFE0  4B B9 EE E1 */	bl func_8009AEC0
/* 804FBFE4  7D 3E 4B 78 */	mr r30, r9
/* 804FBFE8  7C 99 23 78 */	mr r25, r4
/* 804FBFEC  7C BA 2B 78 */	mr r26, r5
/* 804FBFF0  7C 78 1B 78 */	mr r24, r3
/* 804FBFF4  7C DB 33 78 */	mr r27, r6
/* 804FBFF8  7C FC 3B 78 */	mr r28, r7
/* 804FBFFC  7D 1D 43 78 */	mr r29, r8
/* 804FC000  7F C5 F3 78 */	mr r5, r30
/* 804FC004  38 80 00 47 */	li r4, 0x47
/* 804FC008  4B FD E4 51 */	bl Player_actor_check_request_main_able
/* 804FC00C  2C 03 00 00 */	cmpwi r3, 0
/* 804FC010  41 82 00 3C */	beq lbl_804FC04C
/* 804FC014  7F 03 C3 78 */	mr r3, r24
/* 804FC018  4B ED D6 29 */	bl get_player_actor_withoutCheck
/* 804FC01C  7C 7F 1B 78 */	mr r31, r3
/* 804FC020  7F 03 C3 78 */	mr r3, r24
/* 804FC024  7F C5 F3 78 */	mr r5, r30
/* 804FC028  38 80 00 47 */	li r4, 0x47
/* 804FC02C  4B FD 8F E9 */	bl Player_actor_request_main_index
/* 804FC030  93 3F 0D 60 */	stw r25, 0xd60(r31)
/* 804FC034  38 60 00 01 */	li r3, 1
/* 804FC038  93 5F 0D 64 */	stw r26, 0xd64(r31)
/* 804FC03C  93 7F 0D 68 */	stw r27, 0xd68(r31)
/* 804FC040  B3 9F 0D 6C */	sth r28, 0xd6c(r31)
/* 804FC044  93 BF 0D 70 */	stw r29, 0xd70(r31)
/* 804FC048  48 00 00 08 */	b lbl_804FC050
lbl_804FC04C:
/* 804FC04C  38 60 00 00 */	li r3, 0
lbl_804FC050:
/* 804FC050  39 61 00 30 */	addi r11, r1, 0x30
/* 804FC054  4B B9 EE B9 */	bl func_8009AF0C
/* 804FC058  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FC05C  7C 08 03 A6 */	mtlr r0
/* 804FC060  38 21 00 30 */	addi r1, r1, 0x30
/* 804FC064  4E 80 00 20 */	blr 
