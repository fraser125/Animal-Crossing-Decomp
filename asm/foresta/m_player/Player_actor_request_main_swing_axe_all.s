lbl_804EF9EC:
/* 804EF9EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EF9F0  7C 08 02 A6 */	mflr r0
/* 804EF9F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EF9F8  39 61 00 30 */	addi r11, r1, 0x30
/* 804EF9FC  4B BA B4 C9 */	bl func_8009AEC4
/* 804EFA00  7D 3F 4B 78 */	mr r31, r9
/* 804EFA04  7C 9A 23 78 */	mr r26, r4
/* 804EFA08  7C BB 2B 78 */	mr r27, r5
/* 804EFA0C  7C 79 1B 78 */	mr r25, r3
/* 804EFA10  7C DC 33 78 */	mr r28, r6
/* 804EFA14  7C FD 3B 78 */	mr r29, r7
/* 804EFA18  7D 1E 43 78 */	mr r30, r8
/* 804EFA1C  7F E5 FB 78 */	mr r5, r31
/* 804EFA20  38 80 00 25 */	li r4, 0x25
/* 804EFA24  4B FE AA 35 */	bl Player_actor_check_request_main_able
/* 804EFA28  2C 03 00 00 */	cmpwi r3, 0
/* 804EFA2C  41 82 00 40 */	beq lbl_804EFA6C
/* 804EFA30  7F 23 CB 78 */	mr r3, r25
/* 804EFA34  4B EE 9C 0D */	bl get_player_actor_withoutCheck
/* 804EFA38  7F 44 D3 78 */	mr r4, r26
/* 804EFA3C  7F 65 DB 78 */	mr r5, r27
/* 804EFA40  7F 86 E3 78 */	mr r6, r28
/* 804EFA44  7F A7 EB 78 */	mr r7, r29
/* 804EFA48  7F C8 F3 78 */	mr r8, r30
/* 804EFA4C  38 63 0D 60 */	addi r3, r3, 0xd60
/* 804EFA50  4B FF FF 71 */	bl func_804EF9C0
/* 804EFA54  7F 23 CB 78 */	mr r3, r25
/* 804EFA58  7F E5 FB 78 */	mr r5, r31
/* 804EFA5C  38 80 00 25 */	li r4, 0x25
/* 804EFA60  4B FE 55 B5 */	bl Player_actor_request_main_index
/* 804EFA64  38 60 00 01 */	li r3, 1
/* 804EFA68  48 00 00 08 */	b lbl_804EFA70
lbl_804EFA6C:
/* 804EFA6C  38 60 00 00 */	li r3, 0
lbl_804EFA70:
/* 804EFA70  39 61 00 30 */	addi r11, r1, 0x30
/* 804EFA74  4B BA B4 9D */	bl func_8009AF10
/* 804EFA78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EFA7C  7C 08 03 A6 */	mtlr r0
/* 804EFA80  38 21 00 30 */	addi r1, r1, 0x30
/* 804EFA84  4E 80 00 20 */	blr 
