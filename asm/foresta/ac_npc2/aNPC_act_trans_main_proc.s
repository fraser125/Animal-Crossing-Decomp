lbl_80540130:
/* 80540130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540134  7C 08 02 A6 */	mflr r0
/* 80540138  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054013C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540140  7C 9F 23 78 */	mr r31, r4
/* 80540144  93 C1 00 08 */	stw r30, 8(r1)
/* 80540148  7C 7E 1B 78 */	mr r30, r3
/* 8054014C  81 83 09 6C */	lwz r12, 0x96c(r3)
/* 80540150  7D 89 03 A6 */	mtctr r12
/* 80540154  4E 80 04 21 */	bctrl 
/* 80540158  2C 03 00 01 */	cmpwi r3, 1
/* 8054015C  40 82 00 18 */	bne lbl_80540174
/* 80540160  7F C3 F3 78 */	mr r3, r30
/* 80540164  4B FF D2 11 */	bl aNPC_setup_talk_end
/* 80540168  38 00 00 FF */	li r0, 0xff
/* 8054016C  98 1E 07 F6 */	stb r0, 0x7f6(r30)
/* 80540170  48 00 00 30 */	b lbl_805401A0
lbl_80540174:
/* 80540174  7F C3 F3 78 */	mr r3, r30
/* 80540178  4B FF D0 89 */	bl aNPC_check_feel_demoCode
/* 8054017C  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 80540180  3C 60 80 6A */	lis r3, act_proc_2214@ha /* 0x806A3BF0@ha */
/* 80540184  38 A3 3B F0 */	addi r5, r3, act_proc_2214@l /* 0x806A3BF0@l */
/* 80540188  7F C3 F3 78 */	mr r3, r30
/* 8054018C  54 00 10 3A */	slwi r0, r0, 2
/* 80540190  7F E4 FB 78 */	mr r4, r31
/* 80540194  7D 85 00 2E */	lwzx r12, r5, r0
/* 80540198  7D 89 03 A6 */	mtctr r12
/* 8054019C  4E 80 04 21 */	bctrl 
lbl_805401A0:
/* 805401A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805401A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805401A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805401AC  7C 08 03 A6 */	mtlr r0
/* 805401B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805401B4  4E 80 00 20 */	blr 