lbl_80551E38:
/* 80551E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551E3C  7C 08 02 A6 */	mflr r0
/* 80551E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551E44  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 80551E48  98 03 09 A3 */	stb r0, 0x9a3(r3)
/* 80551E4C  4B FF B8 C5 */	bl aNSC_set_stop_spd
/* 80551E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551E54  7C 08 03 A6 */	mtlr r0
/* 80551E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80551E5C  4E 80 00 20 */	blr 
