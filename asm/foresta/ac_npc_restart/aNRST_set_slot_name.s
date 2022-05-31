lbl_805725EC:
/* 805725EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805725F0  7C 08 02 A6 */	mflr r0
/* 805725F4  7C 65 1B 78 */	mr r5, r3
/* 805725F8  3C 80 81 1F */	lis r4, str@ha /* 0x811ED380@ha */
/* 805725FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80572600  38 64 D3 80 */	addi r3, r4, str@l /* 0x811ED380@l */
/* 80572604  38 80 00 10 */	li r4, 0x10
/* 80572608  38 A5 06 CD */	addi r5, r5, 0x6cd
/* 8057260C  4B E7 C6 C1 */	bl mString_Load_StringFromRom
/* 80572610  4B E4 D0 99 */	bl func_803BF6A8
/* 80572614  3C A0 81 1F */	lis r5, str@ha /* 0x811ED380@ha */
/* 80572618  38 80 00 04 */	li r4, 4
/* 8057261C  38 A5 D3 80 */	addi r5, r5, str@l /* 0x811ED380@l */
/* 80572620  38 C0 00 10 */	li r6, 0x10
/* 80572624  4B E4 D6 31 */	bl mMsg_Set_free_str
/* 80572628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057262C  7C 08 03 A6 */	mtlr r0
/* 80572630  38 21 00 10 */	addi r1, r1, 0x10
/* 80572634  4E 80 00 20 */	blr 
