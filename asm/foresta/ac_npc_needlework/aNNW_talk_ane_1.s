lbl_80564234:
/* 80564234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80564238  7C 08 02 A6 */	mflr r0
/* 8056423C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80564240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80564244  7C 9F 23 78 */	mr r31, r4
/* 80564248  93 C1 00 08 */	stw r30, 8(r1)
/* 8056424C  7C 7E 1B 78 */	mr r30, r3
/* 80564250  4B E5 B4 59 */	bl func_803BF6A8
/* 80564254  4B E5 B4 ED */	bl mMsg_Check_main_wait
/* 80564258  2C 03 00 01 */	cmpwi r3, 1
/* 8056425C  40 82 00 74 */	bne lbl_805642D0
/* 80564260  4B E5 B6 75 */	bl mMsg_request_main_forceoff
/* 80564264  7F C3 F3 78 */	mr r3, r30
/* 80564268  38 80 00 41 */	li r4, 0x41
/* 8056426C  48 00 02 1D */	bl aNNW_change_talk_proc
/* 80564270  7F E3 FB 78 */	mr r3, r31
/* 80564274  7F C4 F3 78 */	mr r4, r30
/* 80564278  4B FF D6 E1 */	bl aNNW_search_sister
/* 8056427C  88 83 09 BA */	lbz r4, 0x9ba(r3)
/* 80564280  38 04 00 01 */	addi r0, r4, 1
/* 80564284  98 03 09 BA */	stb r0, 0x9ba(r3)
/* 80564288  38 60 00 03 */	li r3, 3
/* 8056428C  88 9E 09 BA */	lbz r4, 0x9ba(r30)
/* 80564290  38 04 00 01 */	addi r0, r4, 1
/* 80564294  98 1E 09 BA */	stb r0, 0x9ba(r30)
/* 80564298  4B E3 61 AD */	bl mDemo_KeepCamera
/* 8056429C  3C 60 81 1F */	lis r3, struct_811ED318+0x1@ha /* 0x811ED319@ha */
/* 805642A0  38 83 D3 19 */	addi r4, r3, struct_811ED318+0x1@l /* 0x811ED319@l */
/* 805642A4  88 64 00 00 */	lbz r3, 0(r4)
/* 805642A8  38 03 00 01 */	addi r0, r3, 1
/* 805642AC  98 04 00 00 */	stb r0, 0(r4)
/* 805642B0  A0 1E 00 06 */	lhz r0, 6(r30)
/* 805642B4  28 00 D0 71 */	cmplwi r0, 0xd071
/* 805642B8  40 82 00 18 */	bne lbl_805642D0
/* 805642BC  4B FF D6 31 */	bl aNNW_get_next_sister_message
/* 805642C0  2C 03 00 00 */	cmpwi r3, 0
/* 805642C4  41 82 00 0C */	beq lbl_805642D0
/* 805642C8  38 00 00 04 */	li r0, 4
/* 805642CC  98 1E 09 B0 */	stb r0, 0x9b0(r30)
lbl_805642D0:
/* 805642D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805642D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805642D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805642DC  7C 08 03 A6 */	mtlr r0
/* 805642E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805642E4  4E 80 00 20 */	blr 
