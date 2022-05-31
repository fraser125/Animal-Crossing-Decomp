lbl_805037CC:
/* 805037CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805037D0  7C 08 02 A6 */	mflr r0
/* 805037D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805037D8  39 61 00 28 */	addi r11, r1, 0x28
/* 805037DC  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 805037E0  4B B9 76 ED */	bl func_8009AECC
/* 805037E4  FF E0 08 90 */	fmr f31, f1
/* 805037E8  7C 9C 23 78 */	mr r28, r4
/* 805037EC  7C FF 3B 78 */	mr r31, r7
/* 805037F0  7C BD 2B 78 */	mr r29, r5
/* 805037F4  7C 7B 1B 78 */	mr r27, r3
/* 805037F8  7C DE 33 78 */	mr r30, r6
/* 805037FC  7F E5 FB 78 */	mr r5, r31
/* 80503800  38 80 00 63 */	li r4, 0x63
/* 80503804  4B FD 6C 55 */	bl Player_actor_check_request_main_able
/* 80503808  2C 03 00 00 */	cmpwi r3, 0
/* 8050380C  41 82 00 34 */	beq lbl_80503840
/* 80503810  7F 63 DB 78 */	mr r3, r27
/* 80503814  4B ED 5E 2D */	bl get_player_actor_withoutCheck
/* 80503818  D3 E3 0D 60 */	stfs f31, 0xd60(r3)
/* 8050381C  7F E5 FB 78 */	mr r5, r31
/* 80503820  38 80 00 63 */	li r4, 0x63
/* 80503824  B3 83 0D 64 */	sth r28, 0xd64(r3)
/* 80503828  9B A3 0D 66 */	stb r29, 0xd66(r3)
/* 8050382C  93 C3 0D 68 */	stw r30, 0xd68(r3)
/* 80503830  7F 63 DB 78 */	mr r3, r27
/* 80503834  4B FD 17 E1 */	bl Player_actor_request_main_index
/* 80503838  38 60 00 01 */	li r3, 1
/* 8050383C  48 00 00 08 */	b lbl_80503844
lbl_80503840:
/* 80503840  38 60 00 00 */	li r3, 0
lbl_80503844:
/* 80503844  39 61 00 28 */	addi r11, r1, 0x28
/* 80503848  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8050384C  4B B9 76 CD */	bl func_8009AF18
/* 80503850  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80503854  7C 08 03 A6 */	mtlr r0
/* 80503858  38 21 00 30 */	addi r1, r1, 0x30
/* 8050385C  4E 80 00 20 */	blr 
