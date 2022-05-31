lbl_803B6214:
/* 803B6214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6218  7C 08 02 A6 */	mflr r0
/* 803B621C  38 A0 00 00 */	li r5, 0
/* 803B6220  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6224  80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 803B6228  7C 04 00 40 */	cmplw r4, r0
/* 803B622C  40 82 00 18 */	bne lbl_803B6244
/* 803B6230  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 803B6234  38 A0 00 00 */	li r5, 0
/* 803B6238  38 84 B5 4C */	addi r4, r4, none_proc1@l /* 0x803BB54C@l */
/* 803B623C  4B FF FF CD */	bl mEnv_regist_nature
/* 803B6240  38 A0 00 01 */	li r5, 1
lbl_803B6244:
/* 803B6244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6248  7C A3 2B 78 */	mr r3, r5
/* 803B624C  7C 08 03 A6 */	mtlr r0
/* 803B6250  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6254  4E 80 00 20 */	blr 
