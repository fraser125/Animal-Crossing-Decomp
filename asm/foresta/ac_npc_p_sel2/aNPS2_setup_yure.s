lbl_805685F0:
/* 805685F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805685F4  7C 08 02 A6 */	mflr r0
/* 805685F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805685FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80568600  7C 9F 23 78 */	mr r31, r4
/* 80568604  93 C1 00 08 */	stw r30, 8(r1)
/* 80568608  7C 7E 1B 78 */	mr r30, r3
/* 8056860C  4B FF F2 59 */	bl aNPS2_setup_yure_option
/* 80568610  2C 03 00 01 */	cmpwi r3, 1
/* 80568614  40 82 00 14 */	bne lbl_80568628
/* 80568618  7F C3 F3 78 */	mr r3, r30
/* 8056861C  7F E4 FB 78 */	mr r4, r31
/* 80568620  38 A0 00 04 */	li r5, 4
/* 80568624  48 00 17 A5 */	bl aNPS2_change_talk_proc
lbl_80568628:
/* 80568628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056862C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80568630  83 C1 00 08 */	lwz r30, 8(r1)
/* 80568634  7C 08 03 A6 */	mtlr r0
/* 80568638  38 21 00 10 */	addi r1, r1, 0x10
/* 8056863C  4E 80 00 20 */	blr 