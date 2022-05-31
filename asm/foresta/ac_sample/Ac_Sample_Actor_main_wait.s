lbl_8040F120:
/* 8040F120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F124  7C 08 02 A6 */	mflr r0
/* 8040F128  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F12C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040F130  7C 9F 23 78 */	mr r31, r4
/* 8040F134  93 C1 00 08 */	stw r30, 8(r1)
/* 8040F138  7C 7E 1B 78 */	mr r30, r3
/* 8040F13C  4B FF FF 25 */	bl Ac_Sample_Animation_Base
/* 8040F140  3C 80 80 64 */	lis r4, data_80643774@ha /* 0x80643774@ha */
/* 8040F144  7F C3 F3 78 */	mr r3, r30
/* 8040F148  C0 24 37 74 */	lfs f1, data_80643774@l(r4)  /* 0x80643774@l */
/* 8040F14C  4B F6 50 85 */	bl func_803741D0
/* 8040F150  7F C3 F3 78 */	mr r3, r30
/* 8040F154  7F E4 FB 78 */	mr r4, r31
/* 8040F158  4B FF FE 61 */	bl Ac_Sample_Excute_Corect
/* 8040F15C  7F C4 F3 78 */	mr r4, r30
/* 8040F160  38 60 00 07 */	li r3, 7
/* 8040F164  4B F8 B1 01 */	bl mDemo_Check
/* 8040F168  2C 03 00 00 */	cmpwi r3, 0
/* 8040F16C  40 82 00 1C */	bne lbl_8040F188
/* 8040F170  3C 60 80 41 */	lis r3, Ac_Sample_Actor_wait_demo_ct@ha /* 0x8040F084@ha */
/* 8040F174  7F C4 F3 78 */	mr r4, r30
/* 8040F178  38 A3 F0 84 */	addi r5, r3, Ac_Sample_Actor_wait_demo_ct@l /* 0x8040F084@l */
/* 8040F17C  38 60 00 07 */	li r3, 7
/* 8040F180  4B F8 AF DD */	bl mDemo_Request
/* 8040F184  48 00 00 0C */	b lbl_8040F190
lbl_8040F188:
/* 8040F188  38 00 00 01 */	li r0, 1
/* 8040F18C  90 1E 02 60 */	stw r0, 0x260(r30)
lbl_8040F190:
/* 8040F190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040F194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040F198  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040F19C  7C 08 03 A6 */	mtlr r0
/* 8040F1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F1A4  4E 80 00 20 */	blr 
