lbl_805CF684:
/* 805CF684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CF688  7C 08 02 A6 */	mflr r0
/* 805CF68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CF690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CF694  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CF698  83 E3 09 E8 */	lwz r31, 0x9e8(r3)
/* 805CF69C  7F E3 FB 78 */	mr r3, r31
/* 805CF6A0  4B FF FF 31 */	bl mDI_make_trigger_data
/* 805CF6A4  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 805CF6A8  54 83 05 2B */	rlwinm. r3, r4, 0, 0x14, 0x15
/* 805CF6AC  41 82 01 30 */	beq lbl_805CF7DC
/* 805CF6B0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 805CF6B4  54 00 05 2A */	rlwinm r0, r0, 0, 0x14, 0x15
/* 805CF6B8  7C 03 00 40 */	cmplw r3, r0
/* 805CF6BC  40 82 00 B8 */	bne lbl_805CF774
/* 805CF6C0  90 9F 00 0C */	stw r4, 0xc(r31)
/* 805CF6C4  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 805CF6C8  28 00 00 01 */	cmplwi r0, 1
/* 805CF6CC  40 82 00 18 */	bne lbl_805CF6E4
/* 805CF6D0  88 7F 00 11 */	lbz r3, 0x11(r31)
/* 805CF6D4  28 03 00 00 */	cmplwi r3, 0
/* 805CF6D8  41 82 00 0C */	beq lbl_805CF6E4
/* 805CF6DC  38 03 FF FF */	addi r0, r3, -1
/* 805CF6E0  98 1F 00 11 */	stb r0, 0x11(r31)
lbl_805CF6E4:
/* 805CF6E4  88 7F 00 12 */	lbz r3, 0x12(r31)
/* 805CF6E8  28 03 00 00 */	cmplwi r3, 0
/* 805CF6EC  41 82 00 10 */	beq lbl_805CF6FC
/* 805CF6F0  38 03 FF FF */	addi r0, r3, -1
/* 805CF6F4  98 1F 00 12 */	stb r0, 0x12(r31)
/* 805CF6F8  48 00 01 50 */	b lbl_805CF848
lbl_805CF6FC:
/* 805CF6FC  A8 1F 00 32 */	lha r0, 0x32(r31)
/* 805CF700  2C 00 00 00 */	cmpwi r0, 0
/* 805CF704  40 82 01 44 */	bne lbl_805CF848
/* 805CF708  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 805CF70C  28 00 00 00 */	cmplwi r0, 0
/* 805CF710  40 82 00 30 */	bne lbl_805CF740
/* 805CF714  38 00 00 03 */	li r0, 3
/* 805CF718  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 805CF71C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 805CF720  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 805CF724  41 82 00 0C */	beq lbl_805CF730
/* 805CF728  38 60 00 02 */	li r3, 2
/* 805CF72C  48 00 01 20 */	b lbl_805CF84C
lbl_805CF730:
/* 805CF730  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 805CF734  41 82 01 14 */	beq lbl_805CF848
/* 805CF738  38 60 00 03 */	li r3, 3
/* 805CF73C  48 00 01 10 */	b lbl_805CF84C
lbl_805CF740:
/* 805CF740  38 60 00 01 */	li r3, 1
/* 805CF744  38 00 00 02 */	li r0, 2
/* 805CF748  98 7F 00 10 */	stb r3, 0x10(r31)
/* 805CF74C  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 805CF750  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 805CF754  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 805CF758  41 82 00 0C */	beq lbl_805CF764
/* 805CF75C  38 60 00 02 */	li r3, 2
/* 805CF760  48 00 00 EC */	b lbl_805CF84C
lbl_805CF764:
/* 805CF764  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 805CF768  41 82 00 E0 */	beq lbl_805CF848
/* 805CF76C  38 60 00 03 */	li r3, 3
/* 805CF770  48 00 00 DC */	b lbl_805CF84C
lbl_805CF774:
/* 805CF774  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 805CF778  54 60 05 2B */	rlwinm. r0, r3, 0, 0x14, 0x15
/* 805CF77C  41 82 00 CC */	beq lbl_805CF848
/* 805CF780  A8 1F 00 32 */	lha r0, 0x32(r31)
/* 805CF784  2C 00 00 00 */	cmpwi r0, 0
/* 805CF788  40 82 00 C0 */	bne lbl_805CF848
/* 805CF78C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 805CF790  38 00 00 1E */	li r0, 0x1e
/* 805CF794  38 80 00 1A */	li r4, 0x1a
/* 805CF798  38 60 00 00 */	li r3, 0
/* 805CF79C  98 1F 00 12 */	stb r0, 0x12(r31)
/* 805CF7A0  38 00 00 01 */	li r0, 1
/* 805CF7A4  98 9F 00 11 */	stb r4, 0x11(r31)
/* 805CF7A8  98 7F 00 10 */	stb r3, 0x10(r31)
/* 805CF7AC  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 805CF7B0  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 805CF7B4  54 80 05 29 */	rlwinm. r0, r4, 0, 0x14, 0x14
/* 805CF7B8  41 82 00 0C */	beq lbl_805CF7C4
/* 805CF7BC  38 60 00 02 */	li r3, 2
/* 805CF7C0  48 00 00 8C */	b lbl_805CF84C
lbl_805CF7C4:
/* 805CF7C4  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 805CF7C8  41 82 00 0C */	beq lbl_805CF7D4
/* 805CF7CC  38 60 00 03 */	li r3, 3
/* 805CF7D0  48 00 00 7C */	b lbl_805CF84C
lbl_805CF7D4:
/* 805CF7D4  B0 7F 00 32 */	sth r3, 0x32(r31)
/* 805CF7D8  48 00 00 70 */	b lbl_805CF848
lbl_805CF7DC:
/* 805CF7DC  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 805CF7E0  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 805CF7E4  41 82 00 24 */	beq lbl_805CF808
/* 805CF7E8  A8 1F 00 32 */	lha r0, 0x32(r31)
/* 805CF7EC  2C 00 00 00 */	cmpwi r0, 0
/* 805CF7F0  40 82 00 18 */	bne lbl_805CF808
/* 805CF7F4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 805CF7F8  38 00 00 00 */	li r0, 0
/* 805CF7FC  38 60 00 08 */	li r3, 8
/* 805CF800  98 1F 00 12 */	stb r0, 0x12(r31)
/* 805CF804  48 00 00 48 */	b lbl_805CF84C
lbl_805CF808:
/* 805CF808  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 805CF80C  41 82 00 24 */	beq lbl_805CF830
/* 805CF810  A8 1F 00 32 */	lha r0, 0x32(r31)
/* 805CF814  2C 00 00 00 */	cmpwi r0, 0
/* 805CF818  40 82 00 18 */	bne lbl_805CF830
/* 805CF81C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 805CF820  38 00 00 00 */	li r0, 0
/* 805CF824  38 60 00 09 */	li r3, 9
/* 805CF828  98 1F 00 12 */	stb r0, 0x12(r31)
/* 805CF82C  48 00 00 20 */	b lbl_805CF84C
lbl_805CF830:
/* 805CF830  90 7F 00 0C */	stw r3, 0xc(r31)
/* 805CF834  38 60 00 01 */	li r3, 1
/* 805CF838  38 00 00 00 */	li r0, 0
/* 805CF83C  B0 7F 00 30 */	sth r3, 0x30(r31)
/* 805CF840  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805CF844  98 1F 00 12 */	stb r0, 0x12(r31)
lbl_805CF848:
/* 805CF848  38 60 00 00 */	li r3, 0
lbl_805CF84C:
/* 805CF84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CF850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CF854  7C 08 03 A6 */	mtlr r0
/* 805CF858  38 21 00 10 */	addi r1, r1, 0x10
/* 805CF85C  4E 80 00 20 */	blr 
