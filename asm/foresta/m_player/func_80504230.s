lbl_80504230:
/* 80504230  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80504234  7C 08 02 A6 */	mflr r0
/* 80504238  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050423C  39 61 00 30 */	addi r11, r1, 0x30
/* 80504240  4B B9 6C 81 */	bl func_8009AEC0
/* 80504244  7D 5F 53 78 */	mr r31, r10
/* 80504248  7C 99 23 78 */	mr r25, r4
/* 8050424C  7C BA 2B 78 */	mr r26, r5
/* 80504250  7C 78 1B 78 */	mr r24, r3
/* 80504254  7C DB 33 78 */	mr r27, r6
/* 80504258  7C FC 3B 78 */	mr r28, r7
/* 8050425C  7D 1D 43 78 */	mr r29, r8
/* 80504260  7D 3E 4B 78 */	mr r30, r9
/* 80504264  7F E5 FB 78 */	mr r5, r31
/* 80504268  38 80 00 65 */	li r4, 0x65
/* 8050426C  4B FD 61 ED */	bl Player_actor_check_request_main_able
/* 80504270  2C 03 00 00 */	cmpwi r3, 0
/* 80504274  41 82 00 3C */	beq lbl_805042B0
/* 80504278  7F 03 C3 78 */	mr r3, r24
/* 8050427C  4B ED 53 C5 */	bl get_player_actor_withoutCheck
/* 80504280  93 23 0D 60 */	stw r25, 0xd60(r3)
/* 80504284  7F E5 FB 78 */	mr r5, r31
/* 80504288  38 80 00 65 */	li r4, 0x65
/* 8050428C  93 43 0D 64 */	stw r26, 0xd64(r3)
/* 80504290  93 63 0D 68 */	stw r27, 0xd68(r3)
/* 80504294  B3 83 0D 6C */	sth r28, 0xd6c(r3)
/* 80504298  B3 A3 0D 6E */	sth r29, 0xd6e(r3)
/* 8050429C  93 C3 0D 70 */	stw r30, 0xd70(r3)
/* 805042A0  7F 03 C3 78 */	mr r3, r24
/* 805042A4  4B FD 0D 71 */	bl Player_actor_request_main_index
/* 805042A8  38 60 00 01 */	li r3, 1
/* 805042AC  48 00 00 08 */	b lbl_805042B4
lbl_805042B0:
/* 805042B0  38 60 00 00 */	li r3, 0
lbl_805042B4:
/* 805042B4  39 61 00 30 */	addi r11, r1, 0x30
/* 805042B8  4B B9 6C 55 */	bl func_8009AF0C
/* 805042BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805042C0  7C 08 03 A6 */	mtlr r0
/* 805042C4  38 21 00 30 */	addi r1, r1, 0x30
/* 805042C8  4E 80 00 20 */	blr 