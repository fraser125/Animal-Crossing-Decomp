lbl_804AF110:
/* 804AF110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AF114  7C 08 02 A6 */	mflr r0
/* 804AF118  38 E0 00 01 */	li r7, 1
/* 804AF11C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AF120  38 00 00 32 */	li r0, 0x32
/* 804AF124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AF128  7C 7F 1B 78 */	mr r31, r3
/* 804AF12C  38 9F 00 28 */	addi r4, r31, 0x28
/* 804AF130  B0 03 02 62 */	sth r0, 0x262(r3)
/* 804AF134  38 00 00 28 */	li r0, 0x28
/* 804AF138  38 BF 02 3C */	addi r5, r31, 0x23c
/* 804AF13C  B0 03 02 64 */	sth r0, 0x264(r3)
/* 804AF140  A8 C3 02 62 */	lha r6, 0x262(r3)
/* 804AF144  4B FF EA 1D */	bl aUKI_parabola_init
/* 804AF148  38 00 00 03 */	li r0, 3
/* 804AF14C  90 1F 02 38 */	stw r0, 0x238(r31)
/* 804AF150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AF154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AF158  7C 08 03 A6 */	mtlr r0
/* 804AF15C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AF160  4E 80 00 20 */	blr 
