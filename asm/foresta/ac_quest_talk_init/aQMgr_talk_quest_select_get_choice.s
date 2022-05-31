lbl_8048B6A4:
/* 8048B6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B6A8  7C 08 02 A6 */	mflr r0
/* 8048B6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B6B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048B6B4  3B E3 01 88 */	addi r31, r3, 0x188
/* 8048B6B8  88 03 01 86 */	lbz r0, 0x186(r3)
/* 8048B6BC  88 63 01 C8 */	lbz r3, 0x1c8(r3)
/* 8048B6C0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8048B6C4  54 64 D7 BE */	rlwinm r4, r3, 0x1a, 0x1e, 0x1f
/* 8048B6C8  54 63 06 BE */	clrlwi r3, r3, 0x1a
/* 8048B6CC  41 82 00 40 */	beq lbl_8048B70C
/* 8048B6D0  40 80 00 1C */	bge lbl_8048B6EC
/* 8048B6D4  2C 00 00 05 */	cmpwi r0, 5
/* 8048B6D8  41 82 00 20 */	beq lbl_8048B6F8
/* 8048B6DC  40 80 01 C0 */	bge lbl_8048B89C
/* 8048B6E0  2C 00 00 04 */	cmpwi r0, 4
/* 8048B6E4  40 80 01 50 */	bge lbl_8048B834
/* 8048B6E8  48 00 01 B4 */	b lbl_8048B89C
lbl_8048B6EC:
/* 8048B6EC  2C 00 00 10 */	cmpwi r0, 0x10
/* 8048B6F0  40 80 01 AC */	bge lbl_8048B89C
/* 8048B6F4  48 00 00 F4 */	b lbl_8048B7E8
lbl_8048B6F8:
/* 8048B6F8  38 60 00 97 */	li r3, 0x97
/* 8048B6FC  38 00 00 89 */	li r0, 0x89
/* 8048B700  90 7F 00 00 */	stw r3, 0(r31)
/* 8048B704  90 1F 00 04 */	stw r0, 4(r31)
/* 8048B708  48 00 01 B4 */	b lbl_8048B8BC
lbl_8048B70C:
/* 8048B70C  38 00 00 94 */	li r0, 0x94
/* 8048B710  2C 04 00 00 */	cmpwi r4, 0
/* 8048B714  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B718  40 82 00 3C */	bne lbl_8048B754
/* 8048B71C  2C 03 00 00 */	cmpwi r3, 0
/* 8048B720  40 82 00 0C */	bne lbl_8048B72C
/* 8048B724  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B728  48 00 00 AC */	b lbl_8048B7D4
lbl_8048B72C:
/* 8048B72C  2C 03 00 01 */	cmpwi r3, 1
/* 8048B730  40 82 00 10 */	bne lbl_8048B740
/* 8048B734  38 00 00 95 */	li r0, 0x95
/* 8048B738  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B73C  48 00 00 98 */	b lbl_8048B7D4
lbl_8048B740:
/* 8048B740  2C 03 00 02 */	cmpwi r3, 2
/* 8048B744  40 82 00 90 */	bne lbl_8048B7D4
/* 8048B748  38 00 00 95 */	li r0, 0x95
/* 8048B74C  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B750  48 00 00 84 */	b lbl_8048B7D4
lbl_8048B754:
/* 8048B754  2C 04 00 01 */	cmpwi r4, 1
/* 8048B758  40 82 00 24 */	bne lbl_8048B77C
/* 8048B75C  2C 03 00 02 */	cmpwi r3, 2
/* 8048B760  41 82 00 08 */	beq lbl_8048B768
/* 8048B764  48 00 00 0C */	b lbl_8048B770
lbl_8048B768:
/* 8048B768  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B76C  48 00 00 68 */	b lbl_8048B7D4
lbl_8048B770:
/* 8048B770  38 00 00 97 */	li r0, 0x97
/* 8048B774  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B778  48 00 00 5C */	b lbl_8048B7D4
lbl_8048B77C:
/* 8048B77C  2C 04 00 02 */	cmpwi r4, 2
/* 8048B780  40 82 00 54 */	bne lbl_8048B7D4
/* 8048B784  2C 03 00 04 */	cmpwi r3, 4
/* 8048B788  41 82 00 2C */	beq lbl_8048B7B4
/* 8048B78C  40 80 00 10 */	bge lbl_8048B79C
/* 8048B790  2C 03 00 00 */	cmpwi r3, 0
/* 8048B794  41 82 00 14 */	beq lbl_8048B7A8
/* 8048B798  48 00 00 34 */	b lbl_8048B7CC
lbl_8048B79C:
/* 8048B79C  2C 03 00 06 */	cmpwi r3, 6
/* 8048B7A0  40 80 00 2C */	bge lbl_8048B7CC
/* 8048B7A4  48 00 00 1C */	b lbl_8048B7C0
lbl_8048B7A8:
/* 8048B7A8  38 00 00 96 */	li r0, 0x96
/* 8048B7AC  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B7B0  48 00 00 24 */	b lbl_8048B7D4
lbl_8048B7B4:
/* 8048B7B4  38 00 00 EA */	li r0, 0xea
/* 8048B7B8  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B7BC  48 00 00 18 */	b lbl_8048B7D4
lbl_8048B7C0:
/* 8048B7C0  38 00 00 EB */	li r0, 0xeb
/* 8048B7C4  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B7C8  48 00 00 0C */	b lbl_8048B7D4
lbl_8048B7CC:
/* 8048B7CC  38 00 00 94 */	li r0, 0x94
/* 8048B7D0  90 1F 00 00 */	stw r0, 0(r31)
lbl_8048B7D4:
/* 8048B7D4  38 7F 00 04 */	addi r3, r31, 4
/* 8048B7D8  38 80 00 89 */	li r4, 0x89
/* 8048B7DC  38 A0 00 0A */	li r5, 0xa
/* 8048B7E0  4B FF FE 81 */	bl aQMgr_talk_quest_start_choice_random
/* 8048B7E4  48 00 00 D8 */	b lbl_8048B8BC
lbl_8048B7E8:
/* 8048B7E8  2C 04 00 02 */	cmpwi r4, 2
/* 8048B7EC  40 82 00 D0 */	bne lbl_8048B8BC
/* 8048B7F0  2C 03 00 01 */	cmpwi r3, 1
/* 8048B7F4  40 82 00 10 */	bne lbl_8048B804
/* 8048B7F8  38 00 00 98 */	li r0, 0x98
/* 8048B7FC  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B800  48 00 00 28 */	b lbl_8048B828
lbl_8048B804:
/* 8048B804  2C 03 00 02 */	cmpwi r3, 2
/* 8048B808  40 82 00 10 */	bne lbl_8048B818
/* 8048B80C  38 00 00 99 */	li r0, 0x99
/* 8048B810  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B814  48 00 00 14 */	b lbl_8048B828
lbl_8048B818:
/* 8048B818  2C 03 00 03 */	cmpwi r3, 3
/* 8048B81C  40 82 00 0C */	bne lbl_8048B828
/* 8048B820  38 00 00 9A */	li r0, 0x9a
/* 8048B824  90 1F 00 00 */	stw r0, 0(r31)
lbl_8048B828:
/* 8048B828  38 00 00 9B */	li r0, 0x9b
/* 8048B82C  90 1F 00 04 */	stw r0, 4(r31)
/* 8048B830  48 00 00 8C */	b lbl_8048B8BC
lbl_8048B834:
/* 8048B834  2C 04 00 01 */	cmpwi r4, 1
/* 8048B838  40 82 00 40 */	bne lbl_8048B878
/* 8048B83C  2C 03 00 00 */	cmpwi r3, 0
/* 8048B840  40 82 00 10 */	bne lbl_8048B850
/* 8048B844  38 00 00 97 */	li r0, 0x97
/* 8048B848  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B84C  48 00 00 3C */	b lbl_8048B888
lbl_8048B850:
/* 8048B850  2C 03 00 01 */	cmpwi r3, 1
/* 8048B854  40 82 00 10 */	bne lbl_8048B864
/* 8048B858  38 00 00 97 */	li r0, 0x97
/* 8048B85C  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B860  48 00 00 28 */	b lbl_8048B888
lbl_8048B864:
/* 8048B864  2C 03 00 02 */	cmpwi r3, 2
/* 8048B868  40 82 00 20 */	bne lbl_8048B888
/* 8048B86C  38 00 00 97 */	li r0, 0x97
/* 8048B870  90 1F 00 00 */	stw r0, 0(r31)
/* 8048B874  48 00 00 14 */	b lbl_8048B888
lbl_8048B878:
/* 8048B878  7F E3 FB 78 */	mr r3, r31
/* 8048B87C  38 80 00 7F */	li r4, 0x7f
/* 8048B880  38 A0 00 0A */	li r5, 0xa
/* 8048B884  4B FF FD DD */	bl aQMgr_talk_quest_start_choice_random
lbl_8048B888:
/* 8048B888  38 7F 00 04 */	addi r3, r31, 4
/* 8048B88C  38 80 00 89 */	li r4, 0x89
/* 8048B890  38 A0 00 0A */	li r5, 0xa
/* 8048B894  4B FF FD CD */	bl aQMgr_talk_quest_start_choice_random
/* 8048B898  48 00 00 24 */	b lbl_8048B8BC
lbl_8048B89C:
/* 8048B89C  7F E3 FB 78 */	mr r3, r31
/* 8048B8A0  38 80 00 7F */	li r4, 0x7f
/* 8048B8A4  38 A0 00 0A */	li r5, 0xa
/* 8048B8A8  4B FF FD B9 */	bl aQMgr_talk_quest_start_choice_random
/* 8048B8AC  38 7F 00 04 */	addi r3, r31, 4
/* 8048B8B0  38 80 00 89 */	li r4, 0x89
/* 8048B8B4  38 A0 00 0A */	li r5, 0xa
/* 8048B8B8  4B FF FD A9 */	bl aQMgr_talk_quest_start_choice_random
lbl_8048B8BC:
/* 8048B8BC  38 7F 00 08 */	addi r3, r31, 8
/* 8048B8C0  38 80 01 6A */	li r4, 0x16a
/* 8048B8C4  38 A0 00 05 */	li r5, 5
/* 8048B8C8  4B FF FD 99 */	bl aQMgr_talk_quest_start_choice_random
/* 8048B8CC  38 60 FF FF */	li r3, -1
/* 8048B8D0  38 00 00 03 */	li r0, 3
/* 8048B8D4  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8048B8D8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8048B8DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048B8E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B8E4  7C 08 03 A6 */	mtlr r0
/* 8048B8E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B8EC  4E 80 00 20 */	blr 
