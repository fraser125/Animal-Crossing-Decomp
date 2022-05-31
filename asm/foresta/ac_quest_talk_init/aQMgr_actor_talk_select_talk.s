lbl_8048BBB8:
/* 8048BBB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048BBBC  7C 08 02 A6 */	mflr r0
/* 8048BBC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8048BBC4  39 61 00 30 */	addi r11, r1, 0x30
/* 8048BBC8  4B C0 F3 01 */	bl func_8009AEC8
/* 8048BBCC  7C 7A 1B 78 */	mr r26, r3
/* 8048BBD0  80 63 01 78 */	lwz r3, 0x178(r3)
/* 8048BBD4  80 63 00 00 */	lwz r3, 0(r3)
/* 8048BBD8  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 8048BBDC  7F E3 FB 78 */	mr r3, r31
/* 8048BBE0  4B F4 0B A9 */	bl mNpc_SearchAnimalPersonalID
/* 8048BBE4  7C 60 1B 78 */	mr r0, r3
/* 8048BBE8  7F 43 D3 78 */	mr r3, r26
/* 8048BBEC  7C 1E 03 78 */	mr r30, r0
/* 8048BBF0  3B 80 FF FF */	li r28, -1
/* 8048BBF4  3B 60 00 01 */	li r27, 1
/* 8048BBF8  4B FF DD F1 */	bl aQMgr_actor_check_still_reward
/* 8048BBFC  2C 03 FF FF */	cmpwi r3, -1
/* 8048BC00  90 61 00 08 */	stw r3, 8(r1)
/* 8048BC04  41 82 00 18 */	beq lbl_8048BC1C
/* 8048BC08  38 60 00 09 */	li r3, 9
/* 8048BC0C  38 00 00 12 */	li r0, 0x12
/* 8048BC10  90 7A 01 B0 */	stw r3, 0x1b0(r26)
/* 8048BC14  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BC18  48 00 04 D8 */	b lbl_8048C0F0
lbl_8048BC1C:
/* 8048BC1C  7F 43 D3 78 */	mr r3, r26
/* 8048BC20  38 80 00 00 */	li r4, 0
/* 8048BC24  4B FF DD 29 */	bl func_8048994C
/* 8048BC28  2C 03 FF FF */	cmpwi r3, -1
/* 8048BC2C  90 61 00 08 */	stw r3, 8(r1)
/* 8048BC30  41 82 02 80 */	beq lbl_8048BEB0
/* 8048BC34  1C 63 00 34 */	mulli r3, r3, 0x34
/* 8048BC38  38 63 02 14 */	addi r3, r3, 0x214
/* 8048BC3C  7C 7A 1A 14 */	add r3, r26, r3
/* 8048BC40  83 A3 00 08 */	lwz r29, 8(r3)
/* 8048BC44  88 1D 00 00 */	lbz r0, 0(r29)
/* 8048BC48  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048BC4C  28 00 00 01 */	cmplwi r0, 1
/* 8048BC50  40 82 00 40 */	bne lbl_8048BC90
/* 8048BC54  88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 8048BC58  54 00 E8 06 */	rlwinm r0, r0, 0x1d, 0, 3
/* 8048BC5C  7C 00 EE 70 */	srawi r0, r0, 0x1d
/* 8048BC60  7C 00 07 74 */	extsb r0, r0
/* 8048BC64  2C 00 00 02 */	cmpwi r0, 2
/* 8048BC68  40 82 00 28 */	bne lbl_8048BC90
/* 8048BC6C  38 60 00 00 */	li r3, 0
/* 8048BC70  38 00 00 01 */	li r0, 1
/* 8048BC74  98 7A 01 84 */	stb r3, 0x184(r26)
/* 8048BC78  3B 60 00 00 */	li r27, 0
/* 8048BC7C  98 1A 09 5B */	stb r0, 0x95b(r26)
/* 8048BC80  98 7A 01 86 */	stb r3, 0x186(r26)
/* 8048BC84  4B F3 3A 25 */	bl func_803BF6A8
/* 8048BC88  4B F3 50 B9 */	bl mMsg_Set_LockContinue
/* 8048BC8C  48 00 04 64 */	b lbl_8048C0F0
lbl_8048BC90:
/* 8048BC90  7F E4 FB 78 */	mr r4, r31
/* 8048BC94  4B FF DE 29 */	bl aQMgr_actor_check_finish
/* 8048BC98  2C 03 00 01 */	cmpwi r3, 1
/* 8048BC9C  40 82 00 B0 */	bne lbl_8048BD4C
/* 8048BCA0  38 00 02 A6 */	li r0, 0x2a6
/* 8048BCA4  90 1A 01 AC */	stw r0, 0x1ac(r26)
/* 8048BCA8  88 1D 00 00 */	lbz r0, 0(r29)
/* 8048BCAC  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 8048BCB0  28 03 00 02 */	cmplwi r3, 2
/* 8048BCB4  40 82 00 44 */	bne lbl_8048BCF8
/* 8048BCB8  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8048BCBC  28 00 00 06 */	cmplwi r0, 6
/* 8048BCC0  40 82 00 38 */	bne lbl_8048BCF8
/* 8048BCC4  7F A3 EB 78 */	mr r3, r29
/* 8048BCC8  7F E4 FB 78 */	mr r4, r31
/* 8048BCCC  4B F5 7C 85 */	bl mQst_SendRemail
/* 8048BCD0  2C 03 00 01 */	cmpwi r3, 1
/* 8048BCD4  40 82 00 10 */	bne lbl_8048BCE4
/* 8048BCD8  38 00 00 1C */	li r0, 0x1c
/* 8048BCDC  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BCE0  48 00 04 10 */	b lbl_8048C0F0
lbl_8048BCE4:
/* 8048BCE4  38 60 00 1B */	li r3, 0x1b
/* 8048BCE8  38 00 02 A6 */	li r0, 0x2a6
/* 8048BCEC  98 7A 01 86 */	stb r3, 0x186(r26)
/* 8048BCF0  90 1A 01 AC */	stw r0, 0x1ac(r26)
/* 8048BCF4  48 00 03 FC */	b lbl_8048C0F0
lbl_8048BCF8:
/* 8048BCF8  28 03 00 02 */	cmplwi r3, 2
/* 8048BCFC  40 82 00 44 */	bne lbl_8048BD40
/* 8048BD00  88 1D 00 00 */	lbz r0, 0(r29)
/* 8048BD04  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8048BD08  28 00 00 01 */	cmplwi r0, 1
/* 8048BD0C  41 82 00 14 */	beq lbl_8048BD20
/* 8048BD10  28 00 00 02 */	cmplwi r0, 2
/* 8048BD14  41 82 00 0C */	beq lbl_8048BD20
/* 8048BD18  28 00 00 03 */	cmplwi r0, 3
/* 8048BD1C  40 82 00 24 */	bne lbl_8048BD40
lbl_8048BD20:
/* 8048BD20  4B F3 39 89 */	bl func_803BF6A8
/* 8048BD24  38 BD 00 0E */	addi r5, r29, 0xe
/* 8048BD28  38 80 00 0C */	li r4, 0xc
/* 8048BD2C  38 C0 00 08 */	li r6, 8
/* 8048BD30  4B F3 3F 25 */	bl mMsg_Set_free_str
/* 8048BD34  38 00 00 0F */	li r0, 0xf
/* 8048BD38  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BD3C  48 00 03 B4 */	b lbl_8048C0F0
lbl_8048BD40:
/* 8048BD40  38 00 00 0E */	li r0, 0xe
/* 8048BD44  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BD48  48 00 03 A8 */	b lbl_8048C0F0
lbl_8048BD4C:
/* 8048BD4C  88 1D 00 00 */	lbz r0, 0(r29)
/* 8048BD50  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048BD54  28 00 00 01 */	cmplwi r0, 1
/* 8048BD58  40 82 00 1C */	bne lbl_8048BD74
/* 8048BD5C  38 60 00 05 */	li r3, 5
/* 8048BD60  38 00 FF FF */	li r0, -1
/* 8048BD64  98 7A 01 86 */	stb r3, 0x186(r26)
/* 8048BD68  83 81 00 08 */	lwz r28, 8(r1)
/* 8048BD6C  90 01 00 08 */	stw r0, 8(r1)
/* 8048BD70  48 00 01 34 */	b lbl_8048BEA4
lbl_8048BD74:
/* 8048BD74  28 00 00 02 */	cmplwi r0, 2
/* 8048BD78  40 82 01 2C */	bne lbl_8048BEA4
/* 8048BD7C  80 01 00 08 */	lwz r0, 8(r1)
/* 8048BD80  1C 60 00 34 */	mulli r3, r0, 0x34
/* 8048BD84  38 63 02 14 */	addi r3, r3, 0x214
/* 8048BD88  7C 7A 1A 14 */	add r3, r26, r3
/* 8048BD8C  4B FF DD 8D */	bl aQMgr_actor_check_limit
/* 8048BD90  2C 03 00 00 */	cmpwi r3, 0
/* 8048BD94  40 82 00 DC */	bne lbl_8048BE70
/* 8048BD98  88 1D 00 01 */	lbz r0, 1(r29)
/* 8048BD9C  54 00 EF 3F */	rlwinm. r0, r0, 0x1d, 0x1c, 0x1f
/* 8048BDA0  40 82 00 74 */	bne lbl_8048BE14
/* 8048BDA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048BDA8  38 7D 00 0E */	addi r3, r29, 0xe
/* 8048BDAC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048BDB0  3C 84 00 02 */	addis r4, r4, 2
/* 8048BDB4  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8048BDB8  4B F5 43 8D */	bl mPr_CheckCmpPersonalID
/* 8048BDBC  2C 03 00 01 */	cmpwi r3, 1
/* 8048BDC0  40 82 00 2C */	bne lbl_8048BDEC
/* 8048BDC4  38 00 00 03 */	li r0, 3
/* 8048BDC8  38 7A 01 C8 */	addi r3, r26, 0x1c8
/* 8048BDCC  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BDD0  4B F5 6A D9 */	bl func_803E28A8
/* 8048BDD4  38 60 00 00 */	li r3, 0
/* 8048BDD8  38 00 FF FF */	li r0, -1
/* 8048BDDC  90 7A 02 00 */	stw r3, 0x200(r26)
/* 8048BDE0  3B 60 00 00 */	li r27, 0
/* 8048BDE4  90 1A 01 FC */	stw r0, 0x1fc(r26)
/* 8048BDE8  48 00 00 BC */	b lbl_8048BEA4
lbl_8048BDEC:
/* 8048BDEC  38 7D 00 0E */	addi r3, r29, 0xe
/* 8048BDF0  4B F5 42 55 */	bl mPr_NullCheckPersonalID
/* 8048BDF4  2C 03 00 00 */	cmpwi r3, 0
/* 8048BDF8  40 82 00 10 */	bne lbl_8048BE08
/* 8048BDFC  38 00 00 1B */	li r0, 0x1b
/* 8048BE00  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BE04  48 00 00 A0 */	b lbl_8048BEA4
lbl_8048BE08:
/* 8048BE08  38 00 00 01 */	li r0, 1
/* 8048BE0C  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BE10  48 00 00 94 */	b lbl_8048BEA4
lbl_8048BE14:
/* 8048BE14  88 1D 00 00 */	lbz r0, 0(r29)
/* 8048BE18  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8048BE1C  28 00 00 06 */	cmplwi r0, 6
/* 8048BE20  40 82 00 44 */	bne lbl_8048BE64
/* 8048BE24  4B F2 7C E5 */	bl mLd_PlayerManKindCheck
/* 8048BE28  2C 03 00 00 */	cmpwi r3, 0
/* 8048BE2C  40 82 00 10 */	bne lbl_8048BE3C
/* 8048BE30  38 00 00 01 */	li r0, 1
/* 8048BE34  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BE38  48 00 00 6C */	b lbl_8048BEA4
lbl_8048BE3C:
/* 8048BE3C  38 00 00 03 */	li r0, 3
/* 8048BE40  38 7A 01 C8 */	addi r3, r26, 0x1c8
/* 8048BE44  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BE48  4B F5 6A 61 */	bl func_803E28A8
/* 8048BE4C  38 60 00 00 */	li r3, 0
/* 8048BE50  38 00 FF FF */	li r0, -1
/* 8048BE54  90 7A 02 00 */	stw r3, 0x200(r26)
/* 8048BE58  3B 60 00 00 */	li r27, 0
/* 8048BE5C  90 1A 01 FC */	stw r0, 0x1fc(r26)
/* 8048BE60  48 00 00 44 */	b lbl_8048BEA4
lbl_8048BE64:
/* 8048BE64  38 00 00 01 */	li r0, 1
/* 8048BE68  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BE6C  48 00 00 38 */	b lbl_8048BEA4
lbl_8048BE70:
/* 8048BE70  38 00 00 03 */	li r0, 3
/* 8048BE74  38 7A 01 C8 */	addi r3, r26, 0x1c8
/* 8048BE78  98 1A 01 86 */	stb r0, 0x186(r26)
/* 8048BE7C  4B F5 6A 2D */	bl func_803E28A8
/* 8048BE80  38 60 00 00 */	li r3, 0
/* 8048BE84  38 00 FF FF */	li r0, -1
/* 8048BE88  90 7A 02 00 */	stw r3, 0x200(r26)
/* 8048BE8C  7F 43 D3 78 */	mr r3, r26
/* 8048BE90  3B 60 00 00 */	li r27, 0
/* 8048BE94  90 1A 01 FC */	stw r0, 0x1fc(r26)
/* 8048BE98  80 01 00 08 */	lwz r0, 8(r1)
/* 8048BE9C  90 1A 09 30 */	stw r0, 0x930(r26)
/* 8048BEA0  4B FF F7 3D */	bl aQMgr_actor_talk_finish
lbl_8048BEA4:
/* 8048BEA4  38 00 02 A6 */	li r0, 0x2a6
/* 8048BEA8  90 1A 01 AC */	stw r0, 0x1ac(r26)
/* 8048BEAC  48 00 02 44 */	b lbl_8048C0F0
lbl_8048BEB0:
/* 8048BEB0  7F 43 D3 78 */	mr r3, r26
/* 8048BEB4  38 80 00 01 */	li r4, 1
/* 8048BEB8  4B FF DA 95 */	bl func_8048994C
/* 8048BEBC  2C 03 FF FF */	cmpwi r3, -1
/* 8048BEC0  90 61 00 08 */	stw r3, 8(r1)
/* 8048BEC4  41 82 00 E4 */	beq lbl_8048BFA8
/* 8048BEC8  1C 63 00 34 */	mulli r3, r3, 0x34
/* 8048BECC  38 63 02 14 */	addi r3, r3, 0x214
/* 8048BED0  7C 7A 1A 14 */	add r3, r26, r3
/* 8048BED4  4B FF DC 45 */	bl aQMgr_actor_check_limit
/* 8048BED8  2C 03 00 00 */	cmpwi r3, 0
/* 8048BEDC  40 82 00 18 */	bne lbl_8048BEF4
/* 8048BEE0  38 60 00 01 */	li r3, 1
/* 8048BEE4  38 00 02 A6 */	li r0, 0x2a6
/* 8048BEE8  98 7A 01 86 */	stb r3, 0x186(r26)
/* 8048BEEC  90 1A 01 AC */	stw r0, 0x1ac(r26)
/* 8048BEF0  48 00 02 00 */	b lbl_8048C0F0
lbl_8048BEF4:
/* 8048BEF4  80 81 00 08 */	lwz r4, 8(r1)
/* 8048BEF8  1C 64 00 34 */	mulli r3, r4, 0x34
/* 8048BEFC  38 63 02 14 */	addi r3, r3, 0x214
/* 8048BF00  7C 7A 1A 14 */	add r3, r26, r3
/* 8048BF04  80 63 00 08 */	lwz r3, 8(r3)
/* 8048BF08  88 63 00 00 */	lbz r3, 0(r3)
/* 8048BF0C  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 8048BF10  28 00 00 01 */	cmplwi r0, 1
/* 8048BF14  40 82 00 80 */	bne lbl_8048BF94
/* 8048BF18  54 60 06 BF */	clrlwi. r0, r3, 0x1a
/* 8048BF1C  41 82 00 0C */	beq lbl_8048BF28
/* 8048BF20  28 00 00 01 */	cmplwi r0, 1
/* 8048BF24  40 82 00 70 */	bne lbl_8048BF94
lbl_8048BF28:
/* 8048BF28  90 9A 09 30 */	stw r4, 0x930(r26)
/* 8048BF2C  7F 43 D3 78 */	mr r3, r26
/* 8048BF30  38 80 00 00 */	li r4, 0
/* 8048BF34  81 9A 09 48 */	lwz r12, 0x948(r26)
/* 8048BF38  7D 89 03 A6 */	mtctr r12
/* 8048BF3C  4E 80 04 21 */	bctrl 
/* 8048BF40  81 9A 09 48 */	lwz r12, 0x948(r26)
/* 8048BF44  7F 43 D3 78 */	mr r3, r26
/* 8048BF48  38 80 00 01 */	li r4, 1
/* 8048BF4C  7D 89 03 A6 */	mtctr r12
/* 8048BF50  4E 80 04 21 */	bctrl 
/* 8048BF54  90 7A 01 DC */	stw r3, 0x1dc(r26)
/* 8048BF58  38 7A 02 08 */	addi r3, r26, 0x208
/* 8048BF5C  88 1A 01 C8 */	lbz r0, 0x1c8(r26)
/* 8048BF60  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 8048BF64  54 05 06 BE */	clrlwi r5, r0, 0x1a
/* 8048BF68  4B FF FC 4D */	bl aQMgr_talk_quest_set_work
/* 8048BF6C  80 81 00 08 */	lwz r4, 8(r1)
/* 8048BF70  7F 43 D3 78 */	mr r3, r26
/* 8048BF74  4B FF EE B1 */	bl aQMgr_actor_set_free_str
/* 8048BF78  38 60 00 00 */	li r3, 0
/* 8048BF7C  38 00 FF FF */	li r0, -1
/* 8048BF80  90 7A 02 00 */	stw r3, 0x200(r26)
/* 8048BF84  7F 43 D3 78 */	mr r3, r26
/* 8048BF88  90 1A 01 FC */	stw r0, 0x1fc(r26)
/* 8048BF8C  4B FF F6 51 */	bl aQMgr_actor_talk_finish
/* 8048BF90  3B 60 00 00 */	li r27, 0
lbl_8048BF94:
/* 8048BF94  38 60 00 09 */	li r3, 9
/* 8048BF98  38 00 00 06 */	li r0, 6
/* 8048BF9C  98 7A 01 86 */	stb r3, 0x186(r26)
/* 8048BFA0  90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8048BFA4  48 00 01 4C */	b lbl_8048C0F0
lbl_8048BFA8:
/* 8048BFA8  7F 43 D3 78 */	mr r3, r26
/* 8048BFAC  4B FF DB A5 */	bl aQMgr_actor_check_errand_from
/* 8048BFB0  2C 03 FF FF */	cmpwi r3, -1
/* 8048BFB4  90 61 00 08 */	stw r3, 8(r1)
/* 8048BFB8  41 82 00 E8 */	beq lbl_8048C0A0
/* 8048BFBC  1C 63 00 34 */	mulli r3, r3, 0x34
/* 8048BFC0  38 63 02 14 */	addi r3, r3, 0x214
/* 8048BFC4  7C 7A 1A 14 */	add r3, r26, r3
/* 8048BFC8  83 A3 00 08 */	lwz r29, 8(r3)
/* 8048BFCC  4B FF DB 4D */	bl aQMgr_actor_check_limit
/* 8048BFD0  2C 03 00 00 */	cmpwi r3, 0
/* 8048BFD4  40 82 00 18 */	bne lbl_8048BFEC
/* 8048BFD8  38 60 00 02 */	li r3, 2
/* 8048BFDC  38 00 02 A6 */	li r0, 0x2a6
/* 8048BFE0  98 7A 01 86 */	stb r3, 0x186(r26)
/* 8048BFE4  90 1A 01 AC */	stw r0, 0x1ac(r26)
/* 8048BFE8  48 00 01 08 */	b lbl_8048C0F0
lbl_8048BFEC:
/* 8048BFEC  38 60 00 09 */	li r3, 9
/* 8048BFF0  38 00 00 06 */	li r0, 6
/* 8048BFF4  98 7A 01 86 */	stb r3, 0x186(r26)
/* 8048BFF8  90 1A 01 B0 */	stw r0, 0x1b0(r26)
/* 8048BFFC  88 1D 00 00 */	lbz r0, 0(r29)
/* 8048C000  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 8048C004  41 82 00 0C */	beq lbl_8048C010
/* 8048C008  28 00 00 01 */	cmplwi r0, 1
/* 8048C00C  40 82 00 E4 */	bne lbl_8048C0F0
lbl_8048C010:
/* 8048C010  80 01 00 08 */	lwz r0, 8(r1)
/* 8048C014  7F 43 D3 78 */	mr r3, r26
/* 8048C018  38 80 00 00 */	li r4, 0
/* 8048C01C  90 1A 09 30 */	stw r0, 0x930(r26)
/* 8048C020  81 9A 09 48 */	lwz r12, 0x948(r26)
/* 8048C024  7D 89 03 A6 */	mtctr r12
/* 8048C028  4E 80 04 21 */	bctrl 
/* 8048C02C  81 9A 09 48 */	lwz r12, 0x948(r26)
/* 8048C030  7F 43 D3 78 */	mr r3, r26
/* 8048C034  38 80 00 01 */	li r4, 1
/* 8048C038  7D 89 03 A6 */	mtctr r12
/* 8048C03C  4E 80 04 21 */	bctrl 
/* 8048C040  90 7A 01 DC */	stw r3, 0x1dc(r26)
/* 8048C044  38 7A 02 08 */	addi r3, r26, 0x208
/* 8048C048  88 1A 01 C8 */	lbz r0, 0x1c8(r26)
/* 8048C04C  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 8048C050  54 05 06 BE */	clrlwi r5, r0, 0x1a
/* 8048C054  4B FF FB 61 */	bl aQMgr_talk_quest_set_work
/* 8048C058  80 81 00 08 */	lwz r4, 8(r1)
/* 8048C05C  7F 43 D3 78 */	mr r3, r26
/* 8048C060  4B FF ED C5 */	bl aQMgr_actor_set_free_str
/* 8048C064  38 60 00 00 */	li r3, 0
/* 8048C068  38 00 FF FF */	li r0, -1
/* 8048C06C  90 7A 02 00 */	stw r3, 0x200(r26)
/* 8048C070  7F 43 D3 78 */	mr r3, r26
/* 8048C074  90 1A 01 FC */	stw r0, 0x1fc(r26)
/* 8048C078  4B FF F5 65 */	bl aQMgr_actor_talk_finish
/* 8048C07C  88 1D 00 00 */	lbz r0, 0(r29)
/* 8048C080  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 8048C084  40 82 00 14 */	bne lbl_8048C098
/* 8048C088  38 60 00 0D */	li r3, 0xd
/* 8048C08C  38 00 2B 73 */	li r0, 0x2b73
/* 8048C090  90 7A 01 B0 */	stw r3, 0x1b0(r26)
/* 8048C094  90 1A 01 AC */	stw r0, 0x1ac(r26)
lbl_8048C098:
/* 8048C098  3B 60 00 00 */	li r27, 0
/* 8048C09C  48 00 00 54 */	b lbl_8048C0F0
lbl_8048C0A0:
/* 8048C0A0  7F C3 F3 78 */	mr r3, r30
/* 8048C0A4  4B F4 76 39 */	bl mNpc_CheckQuestRequest
/* 8048C0A8  2C 03 00 01 */	cmpwi r3, 1
/* 8048C0AC  40 82 00 18 */	bne lbl_8048C0C4
/* 8048C0B0  38 60 00 06 */	li r3, 6
/* 8048C0B4  38 00 02 A6 */	li r0, 0x2a6
/* 8048C0B8  98 7A 01 86 */	stb r3, 0x186(r26)
/* 8048C0BC  90 1A 01 AC */	stw r0, 0x1ac(r26)
/* 8048C0C0  48 00 00 30 */	b lbl_8048C0F0
lbl_8048C0C4:
/* 8048C0C4  38 60 00 03 */	li r3, 3
/* 8048C0C8  38 00 02 A6 */	li r0, 0x2a6
/* 8048C0CC  98 7A 01 86 */	stb r3, 0x186(r26)
/* 8048C0D0  38 7A 01 C8 */	addi r3, r26, 0x1c8
/* 8048C0D4  90 1A 01 AC */	stw r0, 0x1ac(r26)
/* 8048C0D8  4B F5 67 D1 */	bl func_803E28A8
/* 8048C0DC  38 60 00 00 */	li r3, 0
/* 8048C0E0  38 00 FF FF */	li r0, -1
/* 8048C0E4  90 7A 02 00 */	stw r3, 0x200(r26)
/* 8048C0E8  3B 60 00 00 */	li r27, 0
/* 8048C0EC  90 1A 01 FC */	stw r0, 0x1fc(r26)
lbl_8048C0F0:
/* 8048C0F0  80 1A 01 AC */	lwz r0, 0x1ac(r26)
/* 8048C0F4  2C 00 02 A6 */	cmpwi r0, 0x2a6
/* 8048C0F8  40 82 00 0C */	bne lbl_8048C104
/* 8048C0FC  4B EF 74 45 */	bl func_80383540
/* 8048C100  4B EF 83 DD */	bl mChoice_no_b_set
lbl_8048C104:
/* 8048C104  2C 1B 00 01 */	cmpwi r27, 1
/* 8048C108  40 82 00 98 */	bne lbl_8048C1A0
/* 8048C10C  80 01 00 08 */	lwz r0, 8(r1)
/* 8048C110  2C 00 FF FF */	cmpwi r0, -1
/* 8048C114  41 82 00 44 */	beq lbl_8048C158
/* 8048C118  90 1A 09 30 */	stw r0, 0x930(r26)
/* 8048C11C  7F 43 D3 78 */	mr r3, r26
/* 8048C120  38 80 00 00 */	li r4, 0
/* 8048C124  81 9A 09 48 */	lwz r12, 0x948(r26)
/* 8048C128  7D 89 03 A6 */	mtctr r12
/* 8048C12C  4E 80 04 21 */	bctrl 
/* 8048C130  88 1A 01 86 */	lbz r0, 0x186(r26)
/* 8048C134  28 00 00 12 */	cmplwi r0, 0x12
/* 8048C138  41 82 00 38 */	beq lbl_8048C170
/* 8048C13C  81 9A 09 48 */	lwz r12, 0x948(r26)
/* 8048C140  7F 43 D3 78 */	mr r3, r26
/* 8048C144  38 80 00 01 */	li r4, 1
/* 8048C148  7D 89 03 A6 */	mtctr r12
/* 8048C14C  4E 80 04 21 */	bctrl 
/* 8048C150  90 7A 01 DC */	stw r3, 0x1dc(r26)
/* 8048C154  48 00 00 1C */	b lbl_8048C170
lbl_8048C158:
/* 8048C158  88 BF 00 0D */	lbz r5, 0xd(r31)
/* 8048C15C  7F 43 D3 78 */	mr r3, r26
/* 8048C160  7F C4 F3 78 */	mr r4, r30
/* 8048C164  7F 87 E3 78 */	mr r7, r28
/* 8048C168  38 C1 00 08 */	addi r6, r1, 8
/* 8048C16C  4B FF E7 45 */	bl aQMgr_actor_new_quest
lbl_8048C170:
/* 8048C170  88 1A 01 C8 */	lbz r0, 0x1c8(r26)
/* 8048C174  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 8048C178  28 04 00 03 */	cmplwi r4, 3
/* 8048C17C  41 82 00 1C */	beq lbl_8048C198
/* 8048C180  38 7A 02 08 */	addi r3, r26, 0x208
/* 8048C184  54 05 06 BE */	clrlwi r5, r0, 0x1a
/* 8048C188  4B FF FA 2D */	bl aQMgr_talk_quest_set_work
/* 8048C18C  80 81 00 08 */	lwz r4, 8(r1)
/* 8048C190  7F 43 D3 78 */	mr r3, r26
/* 8048C194  4B FF EC 91 */	bl aQMgr_actor_set_free_str
lbl_8048C198:
/* 8048C198  80 01 00 08 */	lwz r0, 8(r1)
/* 8048C19C  90 1A 09 30 */	stw r0, 0x930(r26)
lbl_8048C1A0:
/* 8048C1A0  7F 43 D3 78 */	mr r3, r26
/* 8048C1A4  4B FF F5 01 */	bl aQMgr_talk_quest_select_get_choice
/* 8048C1A8  81 9A 09 48 */	lwz r12, 0x948(r26)
/* 8048C1AC  7F 43 D3 78 */	mr r3, r26
/* 8048C1B0  38 80 00 02 */	li r4, 2
/* 8048C1B4  7D 89 03 A6 */	mtctr r12
/* 8048C1B8  4E 80 04 21 */	bctrl 
/* 8048C1BC  4B F3 34 ED */	bl func_803BF6A8
/* 8048C1C0  80 9A 01 A8 */	lwz r4, 0x1a8(r26)
/* 8048C1C4  4B F3 3E 01 */	bl mMsg_Set_continue_msg_num
/* 8048C1C8  38 00 00 00 */	li r0, 0
/* 8048C1CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8048C1D0  98 1A 01 85 */	stb r0, 0x185(r26)
/* 8048C1D4  4B C0 ED 41 */	bl func_8009AF14
/* 8048C1D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048C1DC  7C 08 03 A6 */	mtlr r0
/* 8048C1E0  38 21 00 30 */	addi r1, r1, 0x30
/* 8048C1E4  4E 80 00 20 */	blr 
