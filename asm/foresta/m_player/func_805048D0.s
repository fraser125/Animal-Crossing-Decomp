lbl_805048D0:
/* 805048D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805048D4  7C 08 02 A6 */	mflr r0
/* 805048D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805048DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805048E0  4B B9 65 ED */	bl func_8009AECC
/* 805048E4  7C 7B 1B 78 */	mr r27, r3
/* 805048E8  7C 9C 23 78 */	mr r28, r4
/* 805048EC  7C BD 2B 78 */	mr r29, r5
/* 805048F0  7C DE 33 78 */	mr r30, r6
/* 805048F4  4B ED 4D 4D */	bl get_player_actor_withoutCheck
/* 805048F8  7C 7F 1B 78 */	mr r31, r3
/* 805048FC  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 80504900  2C 00 00 66 */	cmpwi r0, 0x66
/* 80504904  40 82 00 0C */	bne lbl_80504910
/* 80504908  38 60 00 00 */	li r3, 0
/* 8050490C  48 00 00 5C */	b lbl_80504968
lbl_80504910:
/* 80504910  2C 00 00 68 */	cmpwi r0, 0x68
/* 80504914  40 82 00 18 */	bne lbl_8050492C
/* 80504918  80 1F 0D 44 */	lwz r0, 0xd44(r31)
/* 8050491C  7C 00 E0 40 */	cmplw r0, r28
/* 80504920  41 82 00 0C */	beq lbl_8050492C
/* 80504924  38 60 00 00 */	li r3, 0
/* 80504928  48 00 00 40 */	b lbl_80504968
lbl_8050492C:
/* 8050492C  7F 63 DB 78 */	mr r3, r27
/* 80504930  7F C5 F3 78 */	mr r5, r30
/* 80504934  38 80 00 66 */	li r4, 0x66
/* 80504938  4B FD 5B 21 */	bl Player_actor_check_request_main_able
/* 8050493C  2C 03 00 00 */	cmpwi r3, 0
/* 80504940  41 82 00 24 */	beq lbl_80504964
/* 80504944  93 9F 0D 60 */	stw r28, 0xd60(r31)
/* 80504948  7F 63 DB 78 */	mr r3, r27
/* 8050494C  7F C5 F3 78 */	mr r5, r30
/* 80504950  38 80 00 66 */	li r4, 0x66
/* 80504954  93 BF 0D 64 */	stw r29, 0xd64(r31)
/* 80504958  4B FD 06 BD */	bl Player_actor_request_main_index
/* 8050495C  38 60 00 01 */	li r3, 1
/* 80504960  48 00 00 08 */	b lbl_80504968
lbl_80504964:
/* 80504964  38 60 00 00 */	li r3, 0
lbl_80504968:
/* 80504968  39 61 00 20 */	addi r11, r1, 0x20
/* 8050496C  4B B9 65 AD */	bl func_8009AF18
/* 80504970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504974  7C 08 03 A6 */	mtlr r0
/* 80504978  38 21 00 20 */	addi r1, r1, 0x20
/* 8050497C  4E 80 00 20 */	blr 
