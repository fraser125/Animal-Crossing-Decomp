lbl_8048A8B0:
/* 8048A8B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048A8B4  7C 08 02 A6 */	mflr r0
/* 8048A8B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048A8BC  39 61 00 40 */	addi r11, r1, 0x40
/* 8048A8C0  4B C1 05 FD */	bl func_8009AEBC
/* 8048A8C4  7C FB 3B 78 */	mr r27, r7
/* 8048A8C8  7C 77 1B 78 */	mr r23, r3
/* 8048A8CC  2C 1B FF FF */	cmpwi r27, -1
/* 8048A8D0  7C 98 23 78 */	mr r24, r4
/* 8048A8D4  7C B9 2B 78 */	mr r25, r5
/* 8048A8D8  7C DA 33 78 */	mr r26, r6
/* 8048A8DC  3B E0 00 00 */	li r31, 0
/* 8048A8E0  3B A0 00 00 */	li r29, 0
/* 8048A8E4  41 82 00 DC */	beq lbl_8048A9C0
/* 8048A8E8  1C 7B 00 34 */	mulli r3, r27, 0x34
/* 8048A8EC  88 17 01 C8 */	lbz r0, 0x1c8(r23)
/* 8048A8F0  38 97 09 5C */	addi r4, r23, 0x95c
/* 8048A8F4  3B 80 00 00 */	li r28, 0
/* 8048A8F8  3B C3 02 14 */	addi r30, r3, 0x214
/* 8048A8FC  7F D7 F2 14 */	add r30, r23, r30
/* 8048A900  83 FE 00 08 */	lwz r31, 8(r30)
/* 8048A904  7F C3 F3 78 */	mr r3, r30
/* 8048A908  88 BF 00 00 */	lbz r5, 0(r31)
/* 8048A90C  50 A0 06 32 */	rlwimi r0, r5, 0, 0x18, 0x19
/* 8048A910  98 17 01 C8 */	stb r0, 0x1c8(r23)
/* 8048A914  4B FF F3 C5 */	bl aQMgr_actor_get_errand_next
/* 8048A918  54 63 06 3F */	clrlwi. r3, r3, 0x18
/* 8048A91C  40 82 00 24 */	bne lbl_8048A940
/* 8048A920  4B BD 23 D5 */	bl fqrand
/* 8048A924  3C 60 80 64 */	lis r3, lit_866@ha /* 0x80644BC0@ha */
/* 8048A928  C0 03 4B C0 */	lfs f0, lit_866@l(r3)  /* 0x80644BC0@l */
/* 8048A92C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048A930  FC 00 00 1E */	fctiwz f0, f0
/* 8048A934  D8 01 00 08 */	stfd f0, 8(r1)
/* 8048A938  83 81 00 0C */	lwz r28, 0xc(r1)
/* 8048A93C  48 00 00 10 */	b lbl_8048A94C
lbl_8048A940:
/* 8048A940  28 03 00 02 */	cmplwi r3, 2
/* 8048A944  41 81 00 08 */	bgt lbl_8048A94C
/* 8048A948  3B 83 FF FF */	addi r28, r3, -1
lbl_8048A94C:
/* 8048A94C  38 1C 00 01 */	addi r0, r28, 1
/* 8048A950  7F C4 F3 78 */	mr r4, r30
/* 8048A954  38 77 09 5C */	addi r3, r23, 0x95c
/* 8048A958  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8048A95C  4B FF F3 2D */	bl aQMgr_actor_set_errand_next
/* 8048A960  2C 1C 00 00 */	cmpwi r28, 0
/* 8048A964  40 82 00 0C */	bne lbl_8048A970
/* 8048A968  3B A0 00 00 */	li r29, 0
/* 8048A96C  48 00 00 10 */	b lbl_8048A97C
lbl_8048A970:
/* 8048A970  88 1F 00 01 */	lbz r0, 1(r31)
/* 8048A974  54 03 EF 3E */	rlwinm r3, r0, 0x1d, 0x1c, 0x1f
/* 8048A978  3B A3 FF FF */	addi r29, r3, -1
lbl_8048A97C:
/* 8048A97C  28 1D 00 00 */	cmplwi r29, 0
/* 8048A980  40 82 00 18 */	bne lbl_8048A998
/* 8048A984  88 17 01 C8 */	lbz r0, 0x1c8(r23)
/* 8048A988  38 60 00 02 */	li r3, 2
/* 8048A98C  50 60 06 BE */	rlwimi r0, r3, 0, 0x1a, 0x1f
/* 8048A990  98 17 01 C8 */	stb r0, 0x1c8(r23)
/* 8048A994  48 00 00 14 */	b lbl_8048A9A8
lbl_8048A998:
/* 8048A998  88 17 01 C8 */	lbz r0, 0x1c8(r23)
/* 8048A99C  38 60 00 01 */	li r3, 1
/* 8048A9A0  50 60 06 BE */	rlwimi r0, r3, 0, 0x1a, 0x1f
/* 8048A9A4  98 17 01 C8 */	stb r0, 0x1c8(r23)
lbl_8048A9A8:
/* 8048A9A8  93 F7 02 00 */	stw r31, 0x200(r23)
/* 8048A9AC  3B 80 00 01 */	li r28, 1
/* 8048A9B0  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8048A9B4  90 17 01 FC */	stw r0, 0x1fc(r23)
/* 8048A9B8  93 7A 00 00 */	stw r27, 0(r26)
/* 8048A9BC  48 00 00 0C */	b lbl_8048A9C8
lbl_8048A9C0:
/* 8048A9C0  4B FF F9 3D */	bl aQMgr_actor_decide_quest
/* 8048A9C4  7C 7C 1B 78 */	mr r28, r3
lbl_8048A9C8:
/* 8048A9C8  2C 1C 00 01 */	cmpwi r28, 1
/* 8048A9CC  40 82 00 A4 */	bne lbl_8048AA70
/* 8048A9D0  81 97 09 48 */	lwz r12, 0x948(r23)
/* 8048A9D4  7E E3 BB 78 */	mr r3, r23
/* 8048A9D8  38 80 00 05 */	li r4, 5
/* 8048A9DC  7D 89 03 A6 */	mtctr r12
/* 8048A9E0  4E 80 04 21 */	bctrl 
/* 8048A9E4  7E E3 BB 78 */	mr r3, r23
/* 8048A9E8  7F E4 FB 78 */	mr r4, r31
/* 8048A9EC  4B FF FB 7D */	bl aQMgr_actor_set_quest_data
/* 8048A9F0  7C 7C 1B 78 */	mr r28, r3
/* 8048A9F4  2C 1C 00 01 */	cmpwi r28, 1
/* 8048A9F8  40 82 00 4C */	bne lbl_8048AA44
/* 8048A9FC  2C 1B FF FF */	cmpwi r27, -1
/* 8048AA00  41 82 00 70 */	beq lbl_8048AA70
/* 8048AA04  80 77 01 78 */	lwz r3, 0x178(r23)
/* 8048AA08  1C 9B 00 34 */	mulli r4, r27, 0x34
/* 8048AA0C  28 1D 00 00 */	cmplwi r29, 0
/* 8048AA10  80 63 00 00 */	lwz r3, 0(r3)
/* 8048AA14  38 84 02 14 */	addi r4, r4, 0x214
/* 8048AA18  80 03 01 7C */	lwz r0, 0x17c(r3)
/* 8048AA1C  7C 97 22 14 */	add r4, r23, r4
/* 8048AA20  90 17 01 D4 */	stw r0, 0x1d4(r23)
/* 8048AA24  41 82 00 10 */	beq lbl_8048AA34
/* 8048AA28  88 17 01 C9 */	lbz r0, 0x1c9(r23)
/* 8048AA2C  53 A0 1E 78 */	rlwimi r0, r29, 3, 0x19, 0x1c
/* 8048AA30  98 17 01 C9 */	stb r0, 0x1c9(r23)
lbl_8048AA34:
/* 8048AA34  38 77 09 5C */	addi r3, r23, 0x95c
/* 8048AA38  38 A0 00 00 */	li r5, 0
/* 8048AA3C  4B FF F2 4D */	bl aQMgr_actor_set_errand_next
/* 8048AA40  48 00 00 30 */	b lbl_8048AA70
lbl_8048AA44:
/* 8048AA44  2C 1C FF FF */	cmpwi r28, -1
/* 8048AA48  40 82 00 24 */	bne lbl_8048AA6C
/* 8048AA4C  88 17 01 C8 */	lbz r0, 0x1c8(r23)
/* 8048AA50  54 00 D7 BF */	rlwinm. r0, r0, 0x1a, 0x1e, 0x1f
/* 8048AA54  40 82 00 0C */	bne lbl_8048AA60
/* 8048AA58  7E E3 BB 78 */	mr r3, r23
/* 8048AA5C  4B FF F4 5D */	bl aQMgr_actor_set_client_quest_info
lbl_8048AA60:
/* 8048AA60  38 00 00 04 */	li r0, 4
/* 8048AA64  98 17 01 86 */	stb r0, 0x186(r23)
/* 8048AA68  48 00 00 08 */	b lbl_8048AA70
lbl_8048AA6C:
/* 8048AA6C  3B 80 00 00 */	li r28, 0
lbl_8048AA70:
/* 8048AA70  2C 1C 00 00 */	cmpwi r28, 0
/* 8048AA74  40 82 00 84 */	bne lbl_8048AAF8
/* 8048AA78  7E E3 BB 78 */	mr r3, r23
/* 8048AA7C  4B FF F1 9D */	bl aQMgr_actor_check_client_quest_info
/* 8048AA80  2C 03 00 01 */	cmpwi r3, 1
/* 8048AA84  40 82 00 10 */	bne lbl_8048AA94
/* 8048AA88  38 00 00 04 */	li r0, 4
/* 8048AA8C  98 17 01 86 */	stb r0, 0x186(r23)
/* 8048AA90  48 00 00 50 */	b lbl_8048AAE0
lbl_8048AA94:
/* 8048AA94  88 17 01 C8 */	lbz r0, 0x1c8(r23)
/* 8048AA98  54 00 D7 BF */	rlwinm. r0, r0, 0x1a, 0x1e, 0x1f
/* 8048AA9C  40 82 00 30 */	bne lbl_8048AACC
/* 8048AAA0  80 17 01 F8 */	lwz r0, 0x1f8(r23)
/* 8048AAA4  28 00 00 00 */	cmplwi r0, 0
/* 8048AAA8  40 82 00 24 */	bne lbl_8048AACC
/* 8048AAAC  38 00 00 04 */	li r0, 4
/* 8048AAB0  7E E3 BB 78 */	mr r3, r23
/* 8048AAB4  98 17 01 86 */	stb r0, 0x186(r23)
/* 8048AAB8  38 80 00 05 */	li r4, 5
/* 8048AABC  81 97 09 48 */	lwz r12, 0x948(r23)
/* 8048AAC0  7D 89 03 A6 */	mtctr r12
/* 8048AAC4  4E 80 04 21 */	bctrl 
/* 8048AAC8  48 00 00 18 */	b lbl_8048AAE0
lbl_8048AACC:
/* 8048AACC  38 00 00 03 */	li r0, 3
/* 8048AAD0  7F 03 C3 78 */	mr r3, r24
/* 8048AAD4  98 17 01 86 */	stb r0, 0x186(r23)
/* 8048AAD8  7F 24 CB 78 */	mr r4, r25
/* 8048AADC  4B F4 8C 3D */	bl mNpc_SetQuestRequestOFF
lbl_8048AAE0:
/* 8048AAE0  38 77 01 C8 */	addi r3, r23, 0x1c8
/* 8048AAE4  4B F5 7D C5 */	bl func_803E28A8
/* 8048AAE8  38 60 00 00 */	li r3, 0
/* 8048AAEC  38 00 FF FF */	li r0, -1
/* 8048AAF0  90 77 02 00 */	stw r3, 0x200(r23)
/* 8048AAF4  90 17 01 FC */	stw r0, 0x1fc(r23)
lbl_8048AAF8:
/* 8048AAF8  39 61 00 40 */	addi r11, r1, 0x40
/* 8048AAFC  4B C1 04 0D */	bl func_8009AF08
/* 8048AB00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048AB04  7C 08 03 A6 */	mtlr r0
/* 8048AB08  38 21 00 40 */	addi r1, r1, 0x40
/* 8048AB0C  4E 80 00 20 */	blr 
