lbl_8053D7E8:
/* 8053D7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D7EC  7C 08 02 A6 */	mflr r0
/* 8053D7F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D7F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D7F8  7C 9F 23 78 */	mr r31, r4
/* 8053D7FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8053D800  7C 7E 1B 78 */	mr r30, r3
/* 8053D804  80 03 08 40 */	lwz r0, 0x840(r3)
/* 8053D808  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8053D80C  40 82 00 6C */	bne lbl_8053D878
/* 8053D810  88 1E 08 33 */	lbz r0, 0x833(r30)
/* 8053D814  28 00 00 00 */	cmplwi r0, 0
/* 8053D818  40 82 00 60 */	bne lbl_8053D878
/* 8053D81C  88 1E 08 30 */	lbz r0, 0x830(r30)
/* 8053D820  28 00 00 00 */	cmplwi r0, 0
/* 8053D824  40 82 00 54 */	bne lbl_8053D878
/* 8053D828  4B E5 D6 91 */	bl mEv_CheckTitleDemo
/* 8053D82C  2C 03 00 00 */	cmpwi r3, 0
/* 8053D830  41 82 00 10 */	beq lbl_8053D840
/* 8053D834  4B E5 D6 85 */	bl mEv_CheckTitleDemo
/* 8053D838  2C 03 FF F7 */	cmpwi r3, -9
/* 8053D83C  40 82 00 3C */	bne lbl_8053D878
lbl_8053D840:
/* 8053D840  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 8053D844  28 00 00 05 */	cmplwi r0, 5
/* 8053D848  41 82 00 30 */	beq lbl_8053D878
/* 8053D84C  A0 1E 00 06 */	lhz r0, 6(r30)
/* 8053D850  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8053D854  2C 00 00 0D */	cmpwi r0, 0xd
/* 8053D858  40 82 00 14 */	bne lbl_8053D86C
/* 8053D85C  7F C3 F3 78 */	mr r3, r30
/* 8053D860  7F E4 FB 78 */	mr r4, r31
/* 8053D864  4B FF FC 11 */	bl aNPC_talk_request_event_npc
/* 8053D868  48 00 00 10 */	b lbl_8053D878
lbl_8053D86C:
/* 8053D86C  7F C3 F3 78 */	mr r3, r30
/* 8053D870  7F E4 FB 78 */	mr r4, r31
/* 8053D874  4B FF FE 95 */	bl aNPC_talk_request_normal_npc
lbl_8053D878:
/* 8053D878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D87C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D880  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053D884  7C 08 03 A6 */	mtlr r0
/* 8053D888  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D88C  4E 80 00 20 */	blr 
