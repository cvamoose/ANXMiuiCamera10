package org.jcodec.containers.mp4.boxes;

import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.LinkedList;
import org.jcodec.common.JCodecUtil2;
import org.jcodec.common.io.NIOUtils;

public class SegmentTypeBox extends Box {
    private Collection<String> compBrands = new LinkedList();
    private String majorBrand;
    private int minorVersion;

    public SegmentTypeBox(Header header) {
        super(header);
    }

    public static SegmentTypeBox createSegmentTypeBox(String str, int i, Collection<String> collection) {
        SegmentTypeBox segmentTypeBox = new SegmentTypeBox(new Header(fourcc()));
        segmentTypeBox.majorBrand = str;
        segmentTypeBox.minorVersion = i;
        segmentTypeBox.compBrands = collection;
        return segmentTypeBox;
    }

    public static String fourcc() {
        return "styp";
    }

    public void parse(ByteBuffer byteBuffer) {
        this.majorBrand = NIOUtils.readString(byteBuffer, 4);
        this.minorVersion = byteBuffer.getInt();
        while (byteBuffer.hasRemaining()) {
            String readString = NIOUtils.readString(byteBuffer, 4);
            if (readString != null) {
                this.compBrands.add(readString);
            } else {
                return;
            }
        }
    }

    public String getMajorBrand() {
        return this.majorBrand;
    }

    public Collection<String> getCompBrands() {
        return this.compBrands;
    }

    public void doWrite(ByteBuffer byteBuffer) {
        byteBuffer.put(JCodecUtil2.asciiString(this.majorBrand));
        byteBuffer.putInt(this.minorVersion);
        for (String asciiString : this.compBrands) {
            byteBuffer.put(JCodecUtil2.asciiString(asciiString));
        }
    }

    public int estimateSize() {
        int i = 13;
        for (String asciiString : this.compBrands) {
            i += JCodecUtil2.asciiString(asciiString).length;
        }
        return i;
    }
}