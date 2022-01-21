.include "macros.inc"

.section .text

.org 0x80073674

.global create__12JUTAssertionFv
create__12JUTAssertionFv:
/* 80073674 000705D4  4E 80 00 20 */	blr 

.global flush_subroutine__12JUTAssertionFv
flush_subroutine__12JUTAssertionFv:
/* 80073678 000705D8  80 6D 8C E0 */	lwz r3, sMessageLife__Q212JUTAssertion23@unnamed@JUTAssert_cpp@-_SDA_BASE_(r13)
/* 8007367C 000705DC  28 03 00 00 */	cmplwi r3, 0
/* 80073680 000705E0  40 82 00 0C */	bne lbl_8007368C
/* 80073684 000705E4  38 60 00 00 */	li r3, 0
/* 80073688 000705E8  4E 80 00 20 */	blr 
lbl_8007368C:
/* 8007368C 000705EC  3C 03 00 01 */	addis r0, r3, 1
/* 80073690 000705F0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80073694 000705F4  41 82 00 0C */	beq lbl_800736A0
/* 80073698 000705F8  38 03 FF FF */	addi r0, r3, -1
/* 8007369C 000705FC  90 0D 8C E0 */	stw r0, sMessageLife__Q212JUTAssertion23@unnamed@JUTAssert_cpp@-_SDA_BASE_(r13)
lbl_800736A0:
/* 800736A0 00070600  80 6D 8C E0 */	lwz r3, sMessageLife__Q212JUTAssertion23@unnamed@JUTAssert_cpp@-_SDA_BASE_(r13)
/* 800736A4 00070604  28 03 00 05 */	cmplwi r3, 5
/* 800736A8 00070608  4C 80 00 20 */	bgelr 
/* 800736AC 0007060C  38 60 00 00 */	li r3, 0
/* 800736B0 00070610  4E 80 00 20 */	blr 

.global flushMessage__12JUTAssertionFv
flushMessage__12JUTAssertionFv:
/* 800736B4 00070614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800736B8 00070618  7C 08 02 A6 */	mflr r0
/* 800736BC 0007061C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800736C0 00070620  4B FF FF B9 */	bl flush_subroutine__12JUTAssertionFv
/* 800736C4 00070624  28 03 00 00 */	cmplwi r3, 0
/* 800736C8 00070628  41 82 00 40 */	beq lbl_80073708
/* 800736CC 0007062C  88 0D 85 A8 */	lbz r0, lbl_80218128-_SDA_BASE_(r13)
/* 800736D0 00070630  28 00 00 01 */	cmplwi r0, 1
/* 800736D4 00070634  40 82 00 34 */	bne lbl_80073708
/* 800736D8 00070638  3C 80 80 20 */	lis r4, sMessageFileLine__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@ha
/* 800736DC 0007063C  80 6D 8C D8 */	lwz r3, sDirectPrint__14JUTDirectPrint-_SDA_BASE_(r13)
/* 800736E0 00070640  38 C4 72 98 */	addi r6, r4, sMessageFileLine__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@l
/* 800736E4 00070644  38 A0 00 10 */	li r5, 0x10
/* 800736E8 00070648  38 80 00 10 */	li r4, 0x10
/* 800736EC 0007064C  4B FF FE CD */	bl drawString__14JUTDirectPrintFUsUsPc
/* 800736F0 00070650  3C 80 80 20 */	lis r4, sMessageString__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@ha
/* 800736F4 00070654  80 6D 8C D8 */	lwz r3, sDirectPrint__14JUTDirectPrint-_SDA_BASE_(r13)
/* 800736F8 00070658  38 C4 72 D8 */	addi r6, r4, sMessageString__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@l
/* 800736FC 0007065C  38 A0 00 18 */	li r5, 0x18
/* 80073700 00070660  38 80 00 10 */	li r4, 0x10
/* 80073704 00070664  4B FF FE B5 */	bl drawString__14JUTDirectPrintFUsUsPc
lbl_80073708:
/* 80073708 00070668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007370C 0007066C  7C 08 03 A6 */	mtlr r0
/* 80073710 00070670  38 21 00 10 */	addi r1, r1, 0x10
/* 80073714 00070674  4E 80 00 20 */	blr 

.global flushMessage_dbPrint__12JUTAssertionFv
flushMessage_dbPrint__12JUTAssertionFv:
/* 80073718 00070678  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8007371C 0007067C  7C 08 02 A6 */	mflr r0
/* 80073720 00070680  90 01 00 54 */	stw r0, 0x54(r1)
/* 80073724 00070684  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80073728 00070688  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8007372C 0007068C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80073730 00070690  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80073734 00070694  4B FF FF 45 */	bl flush_subroutine__12JUTAssertionFv
/* 80073738 00070698  28 03 00 00 */	cmplwi r3, 0
/* 8007373C 0007069C  41 82 01 9C */	beq lbl_800738D8
/* 80073740 000706A0  88 0D 85 A8 */	lbz r0, lbl_80218128-_SDA_BASE_(r13)
/* 80073744 000706A4  28 00 00 01 */	cmplwi r0, 1
/* 80073748 000706A8  40 82 01 90 */	bne lbl_800738D8
/* 8007374C 000706AC  80 6D 8C 80 */	lwz r3, sDebugPrint__10JUTDbPrint-_SDA_BASE_(r13)
/* 80073750 000706B0  28 03 00 00 */	cmplwi r3, 0
/* 80073754 000706B4  41 82 01 84 */	beq lbl_800738D8
/* 80073758 000706B8  83 E3 00 04 */	lwz r31, 4(r3)
/* 8007375C 000706BC  28 1F 00 00 */	cmplwi r31, 0
/* 80073760 000706C0  41 82 01 78 */	beq lbl_800738D8
/* 80073764 000706C4  48 01 61 D9 */	bl VIGetRetraceCount
/* 80073768 000706C8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8007376C 000706CC  54 60 16 36 */	rlwinm r0, r3, 2, 0x18, 0x1b
/* 80073770 000706D0  60 00 00 0F */	ori r0, r0, 0xf
/* 80073774 000706D4  7F E3 FB 78 */	mr r3, r31
/* 80073778 000706D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8007377C 000706DC  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80073780 000706E0  7D 89 03 A6 */	mtctr r12
/* 80073784 000706E4  4E 80 04 21 */	bctrl 
/* 80073788 000706E8  38 00 00 FF */	li r0, 0xff
/* 8007378C 000706EC  9B C1 00 09 */	stb r30, 9(r1)
/* 80073790 000706F0  7F E3 FB 78 */	mr r3, r31
/* 80073794 000706F4  38 81 00 0C */	addi r4, r1, 0xc
/* 80073798 000706F8  98 01 00 08 */	stb r0, 8(r1)
/* 8007379C 000706FC  9B C1 00 0A */	stb r30, 0xa(r1)
/* 800737A0 00070700  98 01 00 0B */	stb r0, 0xb(r1)
/* 800737A4 00070704  80 01 00 08 */	lwz r0, 8(r1)
/* 800737A8 00070708  90 01 00 0C */	stw r0, 0xc(r1)
/* 800737AC 0007070C  4B FF B2 6D */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 800737B0 00070710  3C 60 80 20 */	lis r3, sMessageFileLine__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@ha
/* 800737B4 00070714  38 63 72 98 */	addi r3, r3, sMessageFileLine__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@l
/* 800737B8 00070718  48 02 C0 95 */	bl strlen
/* 800737BC 0007071C  81 9F 00 00 */	lwz r12, 0(r31)
/* 800737C0 00070720  7C 7E 1B 78 */	mr r30, r3
/* 800737C4 00070724  7F E3 FB 78 */	mr r3, r31
/* 800737C8 00070728  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800737CC 0007072C  7D 89 03 A6 */	mtctr r12
/* 800737D0 00070730  4E 80 04 21 */	bctrl 
/* 800737D4 00070734  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 800737D8 00070738  3C 00 43 30 */	lis r0, 0x4330
/* 800737DC 0007073C  7F E3 FB 78 */	mr r3, r31
/* 800737E0 00070740  90 81 00 14 */	stw r4, 0x14(r1)
/* 800737E4 00070744  81 9F 00 00 */	lwz r12, 0(r31)
/* 800737E8 00070748  90 01 00 10 */	stw r0, 0x10(r1)
/* 800737EC 0007074C  C8 22 87 40 */	lfd f1, @614-_SDA2_BASE_(r2)
/* 800737F0 00070750  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800737F4 00070754  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800737F8 00070758  EF E0 08 28 */	fsubs f31, f0, f1
/* 800737FC 0007075C  7D 89 03 A6 */	mtctr r12
/* 80073800 00070760  4E 80 04 21 */	bctrl 
/* 80073804 00070764  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80073808 00070768  3C 00 43 30 */	lis r0, 0x4330
/* 8007380C 0007076C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80073810 00070770  3C 60 80 20 */	lis r3, sMessageFileLine__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@ha
/* 80073814 00070774  38 83 72 98 */	addi r4, r3, sMessageFileLine__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@l
/* 80073818 00070778  C8 62 87 40 */	lfd f3, @614-_SDA2_BASE_(r2)
/* 8007381C 0007077C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80073820 00070780  FC 80 F8 90 */	fmr f4, f31
/* 80073824 00070784  C0 22 87 30 */	lfs f1, @610-_SDA2_BASE_(r2)
/* 80073828 00070788  7F E3 FB 78 */	mr r3, r31
/* 8007382C 0007078C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80073830 00070790  7F C5 F3 78 */	mr r5, r30
/* 80073834 00070794  C0 42 87 34 */	lfs f2, @611-_SDA2_BASE_(r2)
/* 80073838 00070798  EC 60 18 28 */	fsubs f3, f0, f3
/* 8007383C 0007079C  38 C0 00 01 */	li r6, 1
/* 80073840 000707A0  4B FF B2 5D */	bl drawString_size_scale__7JUTFontFffffPCcUlb
/* 80073844 000707A4  3C 60 80 20 */	lis r3, sMessageString__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@ha
/* 80073848 000707A8  38 63 72 D8 */	addi r3, r3, sMessageString__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@l
/* 8007384C 000707AC  48 02 C0 01 */	bl strlen
/* 80073850 000707B0  81 9F 00 00 */	lwz r12, 0(r31)
/* 80073854 000707B4  7C 7E 1B 78 */	mr r30, r3
/* 80073858 000707B8  7F E3 FB 78 */	mr r3, r31
/* 8007385C 000707BC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80073860 000707C0  7D 89 03 A6 */	mtctr r12
/* 80073864 000707C4  4E 80 04 21 */	bctrl 
/* 80073868 000707C8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8007386C 000707CC  3C 00 43 30 */	lis r0, 0x4330
/* 80073870 000707D0  7F E3 FB 78 */	mr r3, r31
/* 80073874 000707D4  90 81 00 24 */	stw r4, 0x24(r1)
/* 80073878 000707D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8007387C 000707DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80073880 000707E0  C8 22 87 40 */	lfd f1, @614-_SDA2_BASE_(r2)
/* 80073884 000707E4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80073888 000707E8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8007388C 000707EC  EF E0 08 28 */	fsubs f31, f0, f1
/* 80073890 000707F0  7D 89 03 A6 */	mtctr r12
/* 80073894 000707F4  4E 80 04 21 */	bctrl 
/* 80073898 000707F8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8007389C 000707FC  3C 00 43 30 */	lis r0, 0x4330
/* 800738A0 00070800  90 61 00 2C */	stw r3, 0x2c(r1)
/* 800738A4 00070804  3C 60 80 20 */	lis r3, sMessageString__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@ha
/* 800738A8 00070808  38 83 72 D8 */	addi r4, r3, sMessageString__Q212JUTAssertion23@unnamed@JUTAssert_cpp@@l
/* 800738AC 0007080C  C8 62 87 40 */	lfd f3, @614-_SDA2_BASE_(r2)
/* 800738B0 00070810  90 01 00 28 */	stw r0, 0x28(r1)
/* 800738B4 00070814  FC 80 F8 90 */	fmr f4, f31
/* 800738B8 00070818  C0 22 87 30 */	lfs f1, @610-_SDA2_BASE_(r2)
/* 800738BC 0007081C  7F E3 FB 78 */	mr r3, r31
/* 800738C0 00070820  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800738C4 00070824  7F C5 F3 78 */	mr r5, r30
/* 800738C8 00070828  C0 42 87 38 */	lfs f2, @612-_SDA2_BASE_(r2)
/* 800738CC 0007082C  EC 60 18 28 */	fsubs f3, f0, f3
/* 800738D0 00070830  38 C0 00 01 */	li r6, 1
/* 800738D4 00070834  4B FF B1 C9 */	bl drawString_size_scale__7JUTFontFffffPCcUlb
lbl_800738D8:
/* 800738D8 00070838  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 800738DC 0007083C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800738E0 00070840  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800738E4 00070844  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800738E8 00070848  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800738EC 0007084C  7C 08 03 A6 */	mtlr r0
/* 800738F0 00070850  38 21 00 50 */	addi r1, r1, 0x50
/* 800738F4 00070854  4E 80 00 20 */	blr 

.global changeDisplayTime__12JUTAssertionFUl
changeDisplayTime__12JUTAssertionFUl:
/* 800738F8 00070858  90 6D 85 A0 */	stw r3, sDisplayTime__Q212JUTAssertion23@unnamed@JUTAssert_cpp@-_SDA_BASE_(r13)
/* 800738FC 0007085C  4E 80 00 20 */	blr 

.global changeDevice__12JUTAssertionFUl
changeDevice__12JUTAssertionFUl:
/* 80073900 00070860  90 6D 85 A4 */	stw r3, sDevice__Q212JUTAssertion23@unnamed@JUTAssert_cpp@-_SDA_BASE_(r13)
/* 80073904 00070864  4E 80 00 20 */	blr 
