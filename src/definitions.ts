export interface ClipboardPlugin {

  write(options: WriteOptions): Promise<void>;

  writeURL(options: WriteOptions): Promise<void>;

  writeImage(options: WriteOptions): Promise<void>;

  read(): Promise<ReadResult>;

  readURL(): Promise<ReadResult>;

  readImage(): Promise<ReadResult>;

  clear(): Promise<void>;
}

export interface WriteOptions {
  value?: string;
  label?: string;
}

export interface ReadResult {
  value: string;
  type: string;
}
