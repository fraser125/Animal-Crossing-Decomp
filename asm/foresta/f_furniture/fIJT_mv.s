lbl_806307D0:
/* 806307D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806307D4  7C 08 02 A6 */	mflr r0
/* 806307D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806307DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806307E0  7C 9F 23 78 */	mr r31, r4
/* 806307E4  93 C1 00 08 */	stw r30, 8(r1)
/* 806307E8  7C 7E 1B 78 */	mr r30, r3
/* 806307EC  7C A3 2B 78 */	mr r3, r5
/* 806307F0  4B DA 8E 51 */	bl get_player_actor_withoutCheck
/* 806307F4  A8 1E 08 2C */	lha r0, 0x82c(r30)
/* 806307F8  2C 00 00 00 */	cmpwi r0, 0
/* 806307FC  40 82 00 30 */	bne lbl_8063082C
/* 80630800  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 80630804  28 00 00 00 */	cmplwi r0, 0
/* 80630808  41 82 00 80 */	beq lbl_80630888
/* 8063080C  A8 83 00 DE */	lha r4, 0xde(r3)
/* 80630810  7F E3 FB 78 */	mr r3, r31
/* 80630814  4B E4 67 A1 */	bl func_80476FB4
/* 80630818  38 60 00 32 */	li r3, 0x32
/* 8063081C  38 00 00 01 */	li r0, 1
/* 80630820  B0 7E 08 2A */	sth r3, 0x82a(r30)
/* 80630824  B0 1E 08 2C */	sth r0, 0x82c(r30)
/* 80630828  48 00 00 60 */	b lbl_80630888
lbl_8063082C:
/* 8063082C  A8 7E 08 2A */	lha r3, 0x82a(r30)
/* 80630830  38 03 FF FF */	addi r0, r3, -1
/* 80630834  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80630838  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 8063083C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80630840  40 82 00 30 */	bne lbl_80630870
/* 80630844  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80630848  38 60 00 64 */	li r3, 0x64
/* 8063084C  38 A4 D2 78 */	addi r5, r4, lit_368@l /* 0x8064D278@l */
/* 80630850  38 80 00 01 */	li r4, 1
/* 80630854  C0 25 00 00 */	lfs f1, 0(r5)
/* 80630858  38 A0 00 01 */	li r5, 1
/* 8063085C  38 C0 00 0D */	li r6, 0xd
/* 80630860  38 E0 00 00 */	li r7, 0
/* 80630864  39 00 00 07 */	li r8, 7
/* 80630868  39 20 00 07 */	li r9, 7
/* 8063086C  4B DD 36 B9 */	bl mVibctl_entry
lbl_80630870:
/* 80630870  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 80630874  2C 00 00 00 */	cmpwi r0, 0
/* 80630878  40 80 00 10 */	bge lbl_80630888
/* 8063087C  38 00 00 00 */	li r0, 0
/* 80630880  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80630884  B0 1E 08 2C */	sth r0, 0x82c(r30)
lbl_80630888:
/* 80630888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063088C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80630890  83 C1 00 08 */	lwz r30, 8(r1)
/* 80630894  7C 08 03 A6 */	mtlr r0
/* 80630898  38 21 00 10 */	addi r1, r1, 0x10
/* 8063089C  4E 80 00 20 */	blr 
