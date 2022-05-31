lbl_80489838:
/* 80489838  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048983C  7C 08 02 A6 */	mflr r0
/* 80489840  90 01 00 34 */	stw r0, 0x34(r1)
/* 80489844  39 61 00 30 */	addi r11, r1, 0x30
/* 80489848  4B C1 16 85 */	bl func_8009AECC
/* 8048984C  7C 7B 1B 78 */	mr r27, r3
/* 80489850  7C BD 2B 78 */	mr r29, r5
/* 80489854  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 80489858  38 00 FF FF */	li r0, -1
/* 8048985C  7C 9C 23 78 */	mr r28, r4
/* 80489860  38 A1 00 08 */	addi r5, r1, 8
/* 80489864  90 01 00 0C */	stw r0, 0xc(r1)
/* 80489868  7F E3 FB 78 */	mr r3, r31
/* 8048986C  38 9F 00 10 */	addi r4, r31, 0x10
/* 80489870  38 C1 00 0C */	addi r6, r1, 0xc
/* 80489874  90 01 00 08 */	stw r0, 8(r1)
/* 80489878  4B FF ED 21 */	bl aQMgr_get_meet_time
/* 8048987C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80489880  40 82 00 10 */	bne lbl_80489890
/* 80489884  7F E3 FB 78 */	mr r3, r31
/* 80489888  38 9F 00 10 */	addi r4, r31, 0x10
/* 8048988C  4B FF EE B1 */	bl aQMgr_set_memory
lbl_80489890:
/* 80489890  7F E3 FB 78 */	mr r3, r31
/* 80489894  4B F4 C4 69 */	bl mNpc_CheckIslandAnimal
/* 80489898  2C 03 00 01 */	cmpwi r3, 1
/* 8048989C  40 82 00 1C */	bne lbl_804898B8
/* 804898A0  7F 63 DB 78 */	mr r3, r27
/* 804898A4  7F 84 E3 78 */	mr r4, r28
/* 804898A8  7F C5 F3 78 */	mr r5, r30
/* 804898AC  4B FF FD F1 */	bl aQMgr_get_hello_msg_no_island
/* 804898B0  7C 7F 1B 78 */	mr r31, r3
/* 804898B4  48 00 00 64 */	b lbl_80489918
lbl_804898B8:
/* 804898B8  A0 1B 00 06 */	lhz r0, 6(r27)
/* 804898BC  28 00 D0 5E */	cmplwi r0, 0xd05e
/* 804898C0  40 82 00 20 */	bne lbl_804898E0
/* 804898C4  7F 63 DB 78 */	mr r3, r27
/* 804898C8  7F 84 E3 78 */	mr r4, r28
/* 804898CC  7F C5 F3 78 */	mr r5, r30
/* 804898D0  7F A6 EB 78 */	mr r6, r29
/* 804898D4  4B FF FB D1 */	bl aQMgr_get_hello_msg_no_kamakura
/* 804898D8  7C 7F 1B 78 */	mr r31, r3
/* 804898DC  48 00 00 3C */	b lbl_80489918
lbl_804898E0:
/* 804898E0  28 00 D0 8F */	cmplwi r0, 0xd08f
/* 804898E4  40 82 00 20 */	bne lbl_80489904
/* 804898E8  7F 63 DB 78 */	mr r3, r27
/* 804898EC  7F 84 E3 78 */	mr r4, r28
/* 804898F0  7F C5 F3 78 */	mr r5, r30
/* 804898F4  7F A6 EB 78 */	mr r6, r29
/* 804898F8  4B FF FC 95 */	bl aQMgr_get_hello_msg_no_summercamp
/* 804898FC  7C 7F 1B 78 */	mr r31, r3
/* 80489900  48 00 00 18 */	b lbl_80489918
lbl_80489904:
/* 80489904  7F 63 DB 78 */	mr r3, r27
/* 80489908  7F 84 E3 78 */	mr r4, r28
/* 8048990C  7F C5 F3 78 */	mr r5, r30
/* 80489910  4B FF F8 0D */	bl aQMgr_get_hello_msg_no_normal
/* 80489914  7C 7F 1B 78 */	mr r31, r3
lbl_80489918:
/* 80489918  80 61 00 08 */	lwz r3, 8(r1)
/* 8048991C  38 80 00 07 */	li r4, 7
/* 80489920  4B FF EA 6D */	bl func_8048838C
/* 80489924  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80489928  38 80 00 08 */	li r4, 8
/* 8048992C  4B FF EA 61 */	bl func_8048838C
/* 80489930  7F E3 FB 78 */	mr r3, r31
/* 80489934  39 61 00 30 */	addi r11, r1, 0x30
/* 80489938  4B C1 15 E1 */	bl func_8009AF18
/* 8048993C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80489940  7C 08 03 A6 */	mtlr r0
/* 80489944  38 21 00 30 */	addi r1, r1, 0x30
/* 80489948  4E 80 00 20 */	blr 
