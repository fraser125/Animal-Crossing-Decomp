lbl_803DA460:
/* 803DA460  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803DA464  7C 08 02 A6 */	mflr r0
/* 803DA468  90 01 00 34 */	stw r0, 0x34(r1)
/* 803DA46C  39 61 00 30 */	addi r11, r1, 0x30
/* 803DA470  4B CC 0A 51 */	bl func_8009AEC0
/* 803DA474  7C 78 1B 78 */	mr r24, r3
/* 803DA478  7C 99 23 78 */	mr r25, r4
/* 803DA47C  7C BA 2B 78 */	mr r26, r5
/* 803DA480  7C DB 33 78 */	mr r27, r6
/* 803DA484  7C FC 3B 78 */	mr r28, r7
/* 803DA488  4B FF F1 B9 */	bl get_player_actor_withoutCheck
/* 803DA48C  83 E3 0C F8 */	lwz r31, 0xcf8(r3)
/* 803DA490  2C 1F 00 41 */	cmpwi r31, 0x41
/* 803DA494  40 82 00 10 */	bne lbl_803DA4A4
/* 803DA498  83 C3 0D 18 */	lwz r30, 0xd18(r3)
/* 803DA49C  83 A3 0D 1C */	lwz r29, 0xd1c(r3)
/* 803DA4A0  48 00 00 0C */	b lbl_803DA4AC
lbl_803DA4A4:
/* 803DA4A4  3B C0 00 00 */	li r30, 0
/* 803DA4A8  3B A0 00 00 */	li r29, 0
lbl_803DA4AC:
/* 803DA4AC  7F 03 C3 78 */	mr r3, r24
/* 803DA4B0  4B FF F1 91 */	bl get_player_actor_withoutCheck
/* 803DA4B4  81 83 12 8C */	lwz r12, 0x128c(r3)
/* 803DA4B8  38 00 00 13 */	li r0, 0x13
/* 803DA4BC  7F 03 C3 78 */	mr r3, r24
/* 803DA4C0  7F C4 F3 78 */	mr r4, r30
/* 803DA4C4  7F A5 EB 78 */	mr r5, r29
/* 803DA4C8  7F E6 FB 78 */	mr r6, r31
/* 803DA4CC  7F 27 CB 78 */	mr r7, r25
/* 803DA4D0  7F 48 D3 78 */	mr r8, r26
/* 803DA4D4  7F 69 DB 78 */	mr r9, r27
/* 803DA4D8  7F 8A E3 78 */	mr r10, r28
/* 803DA4DC  90 01 00 08 */	stw r0, 8(r1)
/* 803DA4E0  7D 89 03 A6 */	mtctr r12
/* 803DA4E4  4E 80 04 21 */	bctrl 
/* 803DA4E8  39 61 00 30 */	addi r11, r1, 0x30
/* 803DA4EC  4B CC 0A 21 */	bl func_8009AF0C
/* 803DA4F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803DA4F4  7C 08 03 A6 */	mtlr r0
/* 803DA4F8  38 21 00 30 */	addi r1, r1, 0x30
/* 803DA4FC  4E 80 00 20 */	blr 
